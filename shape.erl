%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2017 6:37 AM
%%%-------------------------------------------------------------------
-module(shape).
-author("alex").

%% Shape
% {circle, {_X, _Y}, R}
% {rectangle, {_X, _Y}, H, W}
% {rightTriangle, {_X, _Y}, H, W}
% {triangle, {_X, _Y}, H, M, N}

%% API
-export([perimeter/1, area/1, enclose/1]).

hypotenuse(H,L) -> math:sqrt(H*H+L*L).

% Area formula for circle given in video.
area({circle, {_X, _Y}, R}) ->
  math:pi() * R * R;

% Area formula for rectangle given in video.
area({rectangle, {_X, _Y}, H, W}) ->
  H * W;

% Area formula for a right Triangle
% Using integer division for simplicity.
area({rightTriangle, {_X, _Y}, H, W}) -> (H*W) / 2;

% Area formula for non right Triangle
area({triangle, {_X, _Y}, H, M, N}) -> area({rightTriangle, {_X, _Y}, H, M}) + area({rightTriangle, {_X+M, _Y}, H,N}).

% Perimeter formula for circle: 2 * Pi * Radius.
perimeter({circle, {_X, _Y}, R}) ->
  math:pi() * 2 * R;

% Perimeter formula for rectangle: twice the sum of it's height and width.
perimeter({rectangle, {_X, _Y}, H, W}) ->
  2*(H + W);

% Perimeter formula for a right triangle
perimeter({rightTriangle, {_X, _Y}, H, W}) -> hypotenuse(H,W) + H + W;

% Perimeter formula for a triangle
perimeter({triangle, {_X, _Y}, H, M, N}) -> hypotenuse(H,M) + hypotenuse(H,N) + (M+N).

% Enclose for a rectangle is himself
enclose({rectangle, {_X, _Y}, H, W}) -> {rectangle, {_X, _Y}, H, W};

% Enclose for a circle
enclose({circle, {_X, _Y}, R}) -> {rectangle, {_X-R, _Y-R}, 2*R, 2*R};

% Enclose for a triangle
enclose({triangle, {_X1, _Y1}, {_X2, _Y2}, {_X3, _Y3}}) ->
  X_MIN=lists:min([_X1, _X2, _X3]),
  X_MAX=lists:max([_X1, _X2, _X3]),
  Y_MIN=lists:min([_Y1, _Y2, _Y3]),
  Y_MAX=lists:max([_Y1, _Y2, _Y3]),

  {rectangle, {X_MIN,Y_MIN}, Y_MAX-Y_MIN, X_MAX-X_MIN};

enclose({triangle, {_X, _Y}, H, M, N}) ->
  enclose({triangle, {_X, _Y}, {_X+M, _Y+H}, {_X+M+N,_Y}});

enclose({rightTriangle, {_X, _Y}, H, W}) ->
  enclose({triangle, {_X, _Y}, {_X+W, _Y}, {_X+W,_Y+H}}).
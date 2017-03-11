%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2017 7:13 AM
%%%-------------------------------------------------------------------
-module(shape_test).
-author("alex").
-include_lib("eunit/include/eunit.hrl").
%% API
-export([]).

shapes_test_() ->
  [area_tests(), perimeter_tests(), enclose_tests()].

area_tests() ->
  [?_assertEqual(50.26548245743669, shape:area({circle, {0, 0}, 4})),
    ?_assertEqual(16, shape:area({rectangle, {0, 0}, 4, 4})),
    ?_assertEqual(24.0, shape:area({triangle, {0, 0}, 4, 4, 8}))].

perimeter_tests() ->
  [?_assertEqual(25.132741228718345, shape:perimeter({circle, {0, 0}, 4})),
    ?_assertEqual(16, shape:perimeter({rectangle, {0, 0}, 4, 4})),
    ?_assertEqual(26.60112615949154, shape:perimeter({triangle, {0, 0}, 4, 4, 8}))].

enclose_tests() ->
  [?assert(shape:enclose({circle, {1,1}, 1}) == {rectangle, {0,0}, 2, 2}),
    ?assert(shape:enclose({rectangle, {0,0}, 2, 3}) == {rectangle, {0,0}, 2, 3}),
    ?assert(shape:enclose({triangle, {1,5}, {4,5}, {4,1}}) == {rectangle, {1,1}, 4, 3})].
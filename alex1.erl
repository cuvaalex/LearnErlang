%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Mar 2017 12:01 AM
%%%-------------------------------------------------------------------
-module(alex1).
-author("alex").

%% API
-export([perimeter/1]).

hypotenuse(H, W) -> math:sqrt(H*H+W*W).

perimeter({triangle, H, W}) -> H+W+hypotenuse(H, W);
perimeter({square, H}) -> H*4.

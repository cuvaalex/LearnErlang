%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Mar 2017 2:05 PM
%%%-------------------------------------------------------------------
-module(sumof_test).
-author("alex").

-include_lib("eunit/include/eunit.hrl").

simple_test() ->
  [bits_tests()].

bits_tests() ->
  [?_assertEqual(0, sumof:bits(0)),
    ?_assertEqual(1, sumof:bits(1)),
    ?_assertEqual(1, sumof:bits(2)),
    ?_assertEqual(2, sumof:bits(3)),
    ?_assertEqual(1, sumof:bits(4)),
    ?_assertEqual(2, sumof:bits(5)),
    ?_assertEqual(2, sumof:bits(6)),
    ?_assertEqual(3, sumof:bits(7))].

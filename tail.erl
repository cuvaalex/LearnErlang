%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Mar 2017 11:29 PM
%%%-------------------------------------------------------------------
-module(tail).
-author("alex").

%% API
-export([fibonacci/1, perfect/1]).

fibonacci(N) -> fibonacci(N, 0, 1).
fibonacci(0, P1, P2) -> P1;
fibonacci(N, P1, P2) when N>0 -> fibonacci(N-1, P2, P1+P2).

perfect(N) -> perfect(N, 1, 0).
perfect(N, S, Sum) when S > N div 2 -> N == Sum;
perfect(N, S, Sum) when N rem S == 0 -> perfect(N, S+1, Sum+S);
perfect(N, S, Sum) -> perfect(N, S+1, Sum).

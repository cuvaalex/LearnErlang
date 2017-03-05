%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. Feb 2017 11:31 AM
%%%-------------------------------------------------------------------
-module(second).
-author("alex").

%% API

perimeter(X,Y) -> X + Y + hypotenous(X,Y).

area (X,Y) -> (X*Y)/2.

maxOfTree(X, Y, Z) -> max(X, max(Y, Z)).

howManyEqual(X, X, X) -> 3;
howManyEqual(X, X, Y) -> 2;
howManyEqual(X, Y, X) -> 2;
howManyEqual(Y, X, X) -> 2;
howManyEqual(_, _, _) -> 0.

fact(0) -> 1;
fact(N) when N>0 -> fact(N-1) * N.

fib(0) -> 0;
fib(N) when N>0 -> fib(N-1) + fib(N-2).




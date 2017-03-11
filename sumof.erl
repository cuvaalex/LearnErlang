%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Mar 2017 2:04 PM
%%%-------------------------------------------------------------------
-module(sumof).
-author("alex").

%% API
-export([bits/1]).

% bits/1 call bits/2
bits(Number) -> bits(Number, 0).

%bits(0) return 0
bits(0, Sum) -> Sum;

%bits(1) return 1
bits(1, Sum) -> Sum+1;

%when number rem 2 == 0, then call a tail number of this number
bits(Number, Sum) when Number rem 2 == 0 -> bits(Number div 2, Sum+0);

%when number rem 2 != 0, then call a tail number of this number, with Sum+1
bits(Number, Sum) -> bits(Number div 2, Sum+1).

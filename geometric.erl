%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Mar 2017 11:55 PM
%%%-------------------------------------------------------------------
-module(geometric).
-author("alex").

%% API
-export([area/1]).

area({circle ,{X, Y}, R}) -> math:pi()*R*R;
area({rectangle ,{X, Y}, H, W}) -> H*W.

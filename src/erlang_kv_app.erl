%%%-------------------------------------------------------------------
%% @doc erlang_kv public API
%% @end
%%%-------------------------------------------------------------------

-module(erlang_kv_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    erlang_kv_sup:start_link().

stop(_State) ->
    ok.

%% internal functions

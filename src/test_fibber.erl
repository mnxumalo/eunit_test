%%%-------------------------------------------------------------------
%%% @author mthulisi
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Mar 2020 16:02
%%%-------------------------------------------------------------------
-module(test_fibber).
-author("mthulisi").

-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).

basic_test_() ->
  {setup,
    fun() -> fibber:start() end,
    fun(Pid) -> fibber:stop(Pid) end,
    fun basic_generator/1}.

basic_generator(Pid) ->
  [?_assertEqual(0, fibber:calculate(Pid, 0)),
                ?_assertEqual(1, fibber:calculate(Pid, 1)),
                ?_assertEqual(1, fibber:calculate(Pid, 2)),
                ?_assertEqual(2, fibber:calculate(Pid, 3))].

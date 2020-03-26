%%%-------------------------------------------------------------------
%%% @author mthulisi
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Mar 2020 14:08
%%%-------------------------------------------------------------------
-module(test_fizzbuzz).
-author("mthulisi").

-include_lib("eunit/include/eunit.hrl").

%% API
-export([]).

server_test_() ->
  {setup, fun() -> fizzbuzz:start() end,
    fun(Pid) -> fizzbuzz:shutdown(Pid) end,
    fun generate_analyze_tests/1}.

generate_analyze_tests(Pid) ->
  [?_assertEqual(1, fizzbuzz:calculate(Pid, 1)),
   ?_assertEqual(fizz, fizzbuzz:calculate(Pid, 3)),
   ?_assertEqual(buzz, fizzbuzz:calculate(Pid, 5)),
   ?_assertEqual(fizzbuzz, fizzbuzz:calculate(Pid, 15))].

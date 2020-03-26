%%%-------------------------------------------------------------------
%%% @author mthulisi
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Mar 2020 20:51
%%%-------------------------------------------------------------------
-module(fibber).
-author("mthulisi").

%% API
-export([loop/0]).

loop() ->
  receive
    {fib, CallerPid, Value} ->
      CallerPid ! fib(Value),
      loop();
    shutdown ->
      ok
  end.

fib(0) ->
  0;
fib(1) ->
  1;
fib(2) ->
  1;
fib(N) ->
  fib(N - 2) + fib(N - 1).
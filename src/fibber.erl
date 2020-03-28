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
-export([loop/0, start/0, stop/1, calculate/2]).

start() ->
  spawn(fun() -> loop() end).

stop(Pid) ->
  Pid ! shutdown.

calculate(Pid, Number) ->
  Pid ! {fib, self(), Number},
  receive
    {ok, Value} -> Value
    after 5000 -> {error, timeot}
  end.

loop() ->
  receive
    {fib, CallerPid, Value} ->
      CallerPid ! {ok, fib(Value)},
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
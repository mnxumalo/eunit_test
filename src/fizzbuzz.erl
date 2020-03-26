%%%-------------------------------------------------------------------
%%% @author mthulisi
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Mar 2020 14:07
%%%-------------------------------------------------------------------
-module(fizzbuzz).
-author("mthulisi").

%% API
-export([analyze/1, loop/0, calculate/2, shutdown/1, start/0]).

start() -> spawn(fun() -> loop() end).

calculate(Pid, N) ->
  io:format("My Pid is: ~p~n", [self()]),
  Pid ! {analyze, self(), N},
  receive
    Result -> Result
  end.

shutdown(Pid) ->
  Pid ! shutdown.

analyze(N) ->
  if
    N rem 3 == 0 andalso N rem 5 == 0 -> fizzbuzz;
    N rem 3 == 0 -> fizz;
    N rem 5 == 0 -> buzz;
    true -> N
  end.

loop() ->
  receive
    {analyze, CallerId, Value} ->
      CallerId ! analyze(Value),
      loop();
    shutdown ->
      %%io:format("Shutting down...~n", []),
      ok
  end.

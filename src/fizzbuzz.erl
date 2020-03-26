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
-export([analyze/1]).

analyze(N) ->
  if
    N rem 3 == 0 andalso N rem 5 == 0 -> fizzbuzz;
    N rem 3 == 0 -> fizz;
    N rem 5 == 0 -> buzz;
    true -> N
  end.

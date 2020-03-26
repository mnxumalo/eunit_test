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

analyze_test_() ->
  [?_assertEqual(1, fizzbuzz:analyze(1)),
   ?_assertEqual(fizz, fizzbuzz:analyze(3)),
   ?_assertEqual(buzz, fizzbuzz:analyze(5)),
   ?_assertEqual(fizzbuzz, fizzbuzz:analyze(15))].

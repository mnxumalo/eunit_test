%%%-------------------------------------------------------------------
%%% @author mthulisi
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Mar 2020 17:34
%%%-------------------------------------------------------------------
-module(test_all).
-author("mthulisi").

-include_lib("eunit/include/eunit.hrl").

all_test_() ->
  [{module, test_fizzbuzz},
    {module, test_fibber}].

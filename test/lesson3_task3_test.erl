-module(lesson3_task3_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

split_test() -> [
  ?assertEqual([<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>], lesson3_task3:split(<<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">>, "-:-"))
].

-endif.

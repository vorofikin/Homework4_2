-module(lesson3_task3_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

split_test() -> [
  ?assertEqual(
    [<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>],
    lesson3_task3:split(<<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">>, "-:-")
  ),
  ?assertEqual(
    [<<208,166,111,108,49>>, <<208,166,111,108,50>>, <<208,166,111,108,51>>, <<208,166,111,108,52>>, <<208,166,111,108,53>>],
    lesson3_task3:split(<<"Цol1-:-Цol2-:-Цol3-:-Цol4-:-Цol5"/utf8>>, "-:-")
  )
].

-endif.

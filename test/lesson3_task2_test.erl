-module(lesson3_task2_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

words_test() -> [
  ?assertEqual([<<"Text">>, <<"with">>, <<"four">>, <<"words">>], lesson3_task2:words(<<"Text with four words">>))
].

-endif.

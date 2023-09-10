-module(lesson3_task1_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

first_word_test() -> [
  ?assertEqual(<<"Some">>, lesson3_task1:first_word(<<"Some text">>))
].

-endif.

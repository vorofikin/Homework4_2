-module(lesson3_task4_test).

-export([]).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

decode_test() ->
  InputJson = <<"\n        {\n            'squadName': 'Super hero squad',\n            'homeTown': 'Metro City',\n            'formed': 2016,\n            'secretBase': 'Super tower',\n            'active': true,\n            'members': [\n                {\n                    'name': 'Molecule Man',\n                    'age': 29,\n                    'secretIdentity': 'Dan Jukes',\n                    'powers': [\n                        'Radiation resistance',\n                        'Turning tiny',\n                        'Radiation blast'\n                    ]\n                },\n                {\n                    'name': 'Madame Uppercut',\n                    'age': 39,\n                    'secretIdentity': 'Jane Wilson',\n                    'powers': [\n                        'Million tonne punch',\n                        'Damage resistance',\n                        'Superhuman reflexes'\n                    ]\n                },\n                {\n                    'name': 'Eternal Flame',\n                    'age': 1000000,\n                    'secretIdentity': 'Unknown',\n                    'powers': [\n                        'Immortality',\n                        'Heat Immunity',\n                        'Inferno',\n                        'Teleportation',\n                        'Interdimensional travel'\n                    ]\n                }\n            ]\n        }\n    ">>,
  ExpectedOutputMap = #{<<"active">> => true,<<"formed">> => 2016,
    <<"homeTown">> => <<"Metro City">>,
    <<"members">> =>
    [#{<<"age">> => 29,<<"name">> => <<"Molecule Man">>,
    <<"powers">> =>
    [<<"Radiation resistance">>,<<"Turning tiny">>,
    <<"Radiation blast">>],
    <<"secretIdentity">> => <<"Dan Jukes">>},
    #{<<"age">> => 39,<<"name">> => <<"Madame Uppercut">>,
    <<"powers">> =>
    [<<"Million tonne punch">>,<<"Damage resistance">>,
    <<"Superhuman reflexes">>],
    <<"secretIdentity">> => <<"Jane Wilson">>},
    #{<<"age">> => 1000000,<<"name">> => <<"Eternal Flame">>,
    <<"powers">> =>
    [<<"Immortality">>,<<"Heat Immunity">>,<<"Inferno">>,
    <<"Teleportation">>,<<"Interdimensional travel">>],
    <<"secretIdentity">> => <<"Unknown">>}],
    <<"secretBase">> => <<"Super tower">>,
    <<"squadName">> => <<"Super hero squad">>},
  ExpectedOutputProplist = [{<<"squadName">>,<<"Super hero squad">>},
    {<<"homeTown">>,<<"Metro City">>},
    {<<"formed">>,2016},
    {<<"secretBase">>,<<"Super tower">>},
    {<<"active">>,true},
    {<<"members">>,
      [[{<<"name">>,<<"Molecule Man">>},
        {<<"age">>,29},
        {<<"secretIdentity">>,<<"Dan Jukes">>},
        {<<"powers">>,
          [<<"Radiation resistance">>,<<"Turning tiny">>,
            <<"Radiation blast">>]}],
        [{<<"name">>,<<"Madame Uppercut">>},
          {<<"age">>,39},
          {<<"secretIdentity">>,<<"Jane Wilson">>},
          {<<"powers">>,
            [<<"Million tonne punch">>,<<"Damage resistance">>,
              <<"Superhuman reflexes">>]}],
        [{<<"name">>,<<"Eternal Flame">>},
          {<<"age">>,1000000},
          {<<"secretIdentity">>,<<"Unknown">>},
          {<<"powers">>,
            [<<"Immortality">>,<<"Heat Immunity">>,<<"Inferno">>,
              <<"Teleportation">>,<<"Interdimensional travel">>]}]]}],
  [
    ?assertEqual(ExpectedOutputMap, lesson3_task4:decode(InputJson, map)),
    ?assertEqual(ExpectedOutputProplist, lesson3_task4:decode(InputJson, proplist))
  ].

-endif.

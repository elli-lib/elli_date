-module(elli_date_tests).
-include_lib("eunit/include/eunit.hrl").

-define(TEST(Method, Path), elli_test:call(Method, Path, [], <<>>, Config)).

header_test() ->
    Config = [
              {callback, elli_middleware},
              {callback_args,
               [{mods, [
                        {elli_date, []},
                        {elli_example_callback, []}
                       ]}]}
             ],

    ?assertEqual(undefined, whereis(elli_date_server)),
    {ok, Head1, _} = Res1 = ?TEST('GET', <<"/hello/world">>),
    ?assertNotEqual(undefined, whereis(elli_date_server)),
    Res2 = ?TEST('GET', <<"/hello/world">>),

    %% Will fail when we hit the change of second
    ?assertEqual(Res1, Res2),

    ?assertNotEqual(undefined, proplists:get_value(<<"Date">>, Head1)).

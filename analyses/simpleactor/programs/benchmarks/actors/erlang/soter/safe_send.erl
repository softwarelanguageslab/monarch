-module(safe_send).
-epxort([main/0]).

-uncoverable("assert_actor_reference_failed > 0").

main() ->
    ME = self(),
    S = spawn(fun()-> receive {_,X} -> ME ! ok, server(X) end end),
    S ! {init, zero},
    receive ok -> ok end,
    S ! {hi, self()},
    S ! {then, self()},
    S ! bye.

server(State) ->
    receive
        {X, P} -> monarch:assert_actor_reference(P, assert_actor_reference_failed),
                  P ! State, % This call would throw an exception if matching P=zero.
                  server(X);
        bye    -> monarch:label(stop_server), ok
    end.


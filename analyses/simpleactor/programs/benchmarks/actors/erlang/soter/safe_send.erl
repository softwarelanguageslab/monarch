-module(safe_send).
-export([main/0]).

-uncoverable("assert_actor_reference_failed > 0").

main() ->
    monarch:debug(here),
    ME = self(),
    monarch:debug(ME),
    S = spawn(fun()-> receive {_,X} -> ME ! ok, server(X) end end),
    S ! {init, zero},
    receive ok -> ok end,
    S ! {hi, self()},
    S ! {then, self()},
    S ! bye.

server(State) ->
    receive
        {X, P} -> monarch:debug(P),
                  monarch:assert_actor_reference(P, assert_actor_reference_failed),
                  P ! State, % This call would throw an exception if matching P=zero.
                  server(X);
        bye    -> monarch:label(stop_server), ok
    end.


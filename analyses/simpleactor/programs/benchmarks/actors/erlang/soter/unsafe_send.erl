% Requires "verify error-free" option -- NOT SURE IF THIS IS RELEVANT FOR US
-module(unsafe_send).
-export([main/0]).

main() ->
    S = spawn(fun()->server()end),
    S ! {hi, bye}.

server() ->
    receive
        {X, P} -> P ! X, % This call will throw an exception when matching P=bye.
                  server();
        bye    -> monarch:label(stop_server), ok
    end.


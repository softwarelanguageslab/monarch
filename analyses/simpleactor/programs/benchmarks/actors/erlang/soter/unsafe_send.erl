% Requires "verify error-free" option -- NOT SURE IF THIS IS RELEVANT FOR US
-module(unsafe_send).
-export([main/0]).

% The error should be reachable at least once
-uncoverable("error < 1").
% "stop_server" should be unreachable
-uncoverable("stop_server > 0").

main() ->
    S = spawn(fun()->server()end),
    S ! {hi, bye}.

server() ->
    receive
        {X, P} -> monarch:label(error),
                  P ! X, % This call will throw an exception when matching P=bye.
                  server();
        bye    -> monarch:label(stop_server), ok
    end.


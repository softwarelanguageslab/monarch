%%  Author: Emanuele
%%  Created: 04/06/2012
%%  Description:
%%
%%     This example illustrates the "Verify Absence-of-Errors" mode.
%%     The server expects a tuple `{REQUEST,PID-OF-SENDER}`
%%     but the main sends to it an atom instead of its pid, then
%%     generating an exception when the server tries to send back
%%     a response to what he assumes to be a pid.
%%
%%     The verification step discovers a *genuine* counter-example.
%%     To inspect the error trace run bfc on the generated model
%%     and look at the trace alongside the dot model of the ACS.
%%

-module(unsafe_send).

-compile(export_all).

-include_lib("soter.hrl").

% Requires "verify error-free" option

main() ->
    S = spawn(fun()->server()end),
    S ! {hi, bye}.

server() ->
    receive
        {X, P} -> P ! X, % This call will throw an exception when matching P=bye.
                  server();
        bye    -> ?label(stop_server), ok
    end.


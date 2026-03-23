%%  Author: Emanuele
%%  Created: 05/06/2012
%%  Description:
%%
%%     This example is similar to `parikh` but requires
%%     a more precise data abstraction to prove it safe
%%     (i.e. Data_1 instead of Data_0, through the switch `-D 1`).
%%

-module(safe_send).

-compile(export_all).

-include_lib("soter.hrl").

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
        {X, P} -> P ! State, % This call would throw an exception if matching P=zero.
                  server(X);
        bye    -> ?label(stop_server), ok
    end.


%%  Author: Emanuele
%%  Created: 05/06/2012
%%  Description:
%%
%%     This example requires reasoning about VAS counters in order
%%     to be proved safe: the CFA alone does not suffice to prove the property
%%     i.e. a state of error is reachable in the CFA graph but *not* in the
%%     VAS semantics of the generated ACS.
%%

-module(parikh).

-compile(export_all).

-include_lib("soter.hrl").

main() ->
    S = spawn(fun()-> server() end),
    S ! {init, self(), a},
    receive ok -> ok end,
    S ! {set, b},
    S ! bye.

server() ->
    receive
        {init, P, X} ->
            P ! ok,
            do_serve(X)
    end.

do_serve(X) ->
    receive
        {init, _, _} ->
            ?soter_error("We should be already initialized!");
        {set, Y} ->
            do_serve(Y);
        {get, P} ->
            P ! X,
            do_serve(X);
        bye ->
            died
    end.


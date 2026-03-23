%%  Author: Emanuele
%%  Created: 5/jun/2012
%%  Description:
%%
%%     A process running `stutter` discards a message in the mailbox and feeds the next to its functional
%%     argument and so on in a loop. Another process sends a `bad argument' and a
%%     good one in alternation such that only the good ones are fed to the
%%     function. The property is that the function is never called with a bad
%%     argument. This cannot be proved because sequential information of the
%%     mailboxes, which is essential for the verification, is lost in the counter
%%     abstraction.
%%
%%     This example shows some limitations of Soter: no data/message abstraction
%%     supported by Soter can get rid of the spurious traces.
%%

-module(stutter).
-compile(export_all).

-include_lib("soter.hrl").

main() ->
    P = spawn(fun()-> stutter(fun(Msg)-> dosmt(Msg) end) end),
    sendA(P).

dosmt(a) -> ?soter_error("We abhorr 'a's.");
dosmt(b) -> 'we love b'.

sendB(P) -> P!b, sendA(P).
sendA(P) -> P!a, sendB(P).

stutter(F) ->
    receive
        _ -> unstutter(F)
    end.

unstutter(F) ->
    receive
        X -> F(X), stutter(F)
    end.

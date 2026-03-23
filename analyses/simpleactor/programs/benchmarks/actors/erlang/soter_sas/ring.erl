%%  Author: Emanuele
%%  Created: 2012
%%  Description:
%%
%%    This example sets up a ring using higher-order features.
%%    Then, analogously to `pipe`, messages are sent in such a
%%    way that every mailbox has at most one message waiting.
%%

-module(ring).
-export([main/0]).


-uncoverable("slave_mb >= 2").

% TODO(monarch): cannot implement this benchmark yet since we don't have
% a "top" abstraction for lists of natural numbers.

main()->
    P = init_ring(fun(A,B)->slave(A,B) end,?list_of_peanos()),
    probe_ring(P).

probe_ring(P) ->
    P ! {peek, zero, self()},
    receive
        {ans, _} -> hurray
    end,
    probe_ring(P).

init_ring(Fun,List) ->
    spawn(fun()-> bootstrap_ring(Fun,List) end).

bootstrap_ring(Fun, Xs) ->
    bootstrap_ring(Fun, self(), Xs).
bootstrap_ring(Fun, Prev, [X]) ->
    Fun(Prev, X);
bootstrap_ring(Fun, Prev, [X | Xs]) ->
    Nxt = spawn(fun()-> Fun(Prev, X) end),
    bootstrap_ring(Fun, Nxt, Xs).


slave(Nxt, Me) ->
    ?label_mail('slave_mb', Nxt),
    receive
        {forward, X} -> Nxt ! {forward, [Me|X]};
        {peek, X, From} ->
            Nxt ! {forward, [Me|X]},
            receive
                {forward, Y} -> From ! {ans, Y}
            end
    end,
    slave(Nxt, Me).

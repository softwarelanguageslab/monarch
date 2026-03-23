%%  Author: Emanuele
%%  Created: 4/6/2012
%%  Description:
%%
%%     A process implementing a counter with locks shared between two
%%     identical clients trying to increment it concurrently.
%%     A mutual exclusion property of the section of the clients
%%     protected by locks is established.


-module(race).
-export([main/0]).

% TODO(monarch): check if this is correct
-uncoverable("critical > 2").

%%% CELL
free_cell(X) ->
    receive
        {lock, P} ->
            P ! {ready, self()},
            locked_cell(P, X)
    end.

locked_cell(P,X) ->
    receive
        {write, P, Y} ->
            locked_cell(P,Y);
        {read, P} ->
            P ! {val, self(), X},
            locked_cell(P,X);
        {unlock, P} ->
            free_cell(X)
    end.

%%% CELL API

lock_cell(Q) ->
    Q ! {lock, self()},
    receive
        {ready, Q} -> ok
    end.

unlock_cell(Q) ->
    Q ! {unlock, self()}.

read_cell(Q) ->
    Q ! {read, self()},
    receive
        {val,Q,X} -> X
    end.

write_cell(Q, X) ->
    Q ! {write, self(), X}.


%%% INCREMENT CLIENT

inc(C) ->
    lock_cell(C),
    % ?assert_uncoverable(2), TODO(monarch): check what this means
    monarch:label(critical),
    write_cell(C, {s,read_cell(C)}),
    unlock_cell(C).

%%% Entry point

main() ->
    C = spawn(fun() -> free_cell(monarch:any_nat()) end),
    spawn(fun()-> inc(C) end),
    spawn(fun()-> inc(C) end).

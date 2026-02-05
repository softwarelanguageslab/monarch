%%  Author: Emanuele
%%  Created: 1/5/2012
%%  Adapted for Monarch by: Bram Vandenbogaerde
%%  Description:
%%
%%    This example is based on `reslock` with the only difference that the
%%    instance of the locked resource `behaviour' is not any particular one
%%    but just a stub that replies in arbitrary ways to requests.
%%
%%    Similarly, the client implemented by `any_client` does not perform any
%%    particular action (as the `inc` client of `reslock`) but loops over the
%%    actions:
%%
%%    1. Acquire a lock
%%    2. Make an arbitrary number of requests to the locked resource
%%    3. Unlock the resource
%%
%%    The function `many_clients` spawns N instances of `any_client` all trying
%%    to use the same resource.
%%
%%    This example aims to demonstrate the ability of Soter in handling:
%%
%%    - Behaviour-like modules (via higher-order)
%%    - Non determinism (the `soter:choice` operator)
%%    - Message-passing
%%    - Dynamic Creation of processes
%%    - Rich concurrency-sensitive properties as mutual exclusion
%%


-module(reslockbeh).
-export([main/0]).
-uncoverable("critical >= 2").
-include("soter.hrl").

%%% LOCKED RESOURCE

res_start(Res) -> spawn(fun()->res_free(Res) end).

res_free(Res) ->
    receive
        {lock, P} ->
            P ! {acquired, self()},
            res_locked(Res, P)
    end.

res_locked(Res, P) ->
    receive
        {req, P, Cmd} ->
            {NewRes, R} = Res(P, Cmd),
            case R of
                ok ->
                    res_locked(NewRes, P);
                {reply, A} ->
                    P ! {ans, self(), A},
                    res_locked(NewRes, P)
            end;
        {unlock, P} ->
            res_free(Res)
    end.

%%% RES API

res_lock(Q) ->
    Q ! {lock, self()},
    receive
        {acquired, Q} -> ok
    end.

res_unlock(Q) ->
    Q ! {unlock, self()}, ok.

res_request(Q, Cmd) ->
    Q ! {req, self(), Cmd},
    receive
        {ans, Q, X} -> X
    end.

res_do(Q, Cmd) ->
    Q ! {req, self(), Cmd}, ok.


%%% Generic Instance

inst_start() -> res_start(inst(monarch:any_nat())).
inst(_X) ->
    fun(_P, _Cmd)->
        {
            inst(monarch:any_nat()),
            % TODO(monarch): how do we handle this things? maybe we can just do an if on "boolTop" or something.
            ?SoterOneOf([
                ok,
                { reply, any_ans() }
            ])
        }
    end.

any_ans() ->
    % TODO(monarch): same as beofre
    ?SoterOneOf([
        ans1,
        {ans2,?any_peano()}
    ]).


%%% GENERIC CLIENT

any_client(C) ->
    res_lock(C),
    monarch:label(critical),
    any_interaction(C),
    res_unlock(C),
    any_client(C).

any_interaction(C) ->
    soter:choice(
        fun() -> ok end,
        fun() -> res_do(C, cmd),
                 any_interaction(C)
        end,
        fun() -> res_request(C, req),
                 any_interaction(C)
        end
    ).

%%% Program Entry points

main() ->
    C = inst_start(),
    many_clients(C, monarch:any_nat()).

many_clients(_, 0) -> ok;
many_clients(C, N) ->
    spawn(fun()->any_client(C) end),
    many_clients(C, N-1).


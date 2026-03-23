%%  Author: Emanuele
%%  Created: 2012
%%  Adapted for Monarch by: Bram Vandenbogaerde
%%  Description:
%%
%%     Shared database adapted from [(Huch, 1999)](http://dx.doi.org/10.1145/317636.317908).
%%     the `read*` functions were originally performing IO
%%     while here they are abstracted using `soter:choice` and
%%     returning all possible relevant values.
%%

-module(concdb).
-export([main/0]).

-uncoverable("client_writes >= 2").


main() ->
    DB = spawn(fun()->dataBase([])end),
    spawnmany(fun()->client(DB) end).

spawnmany(F) ->
    spawn(F),
    case monarch:any_bool() of
        false -> ok;
        true -> spawnmany(F)
    end.

dataBase(L) ->
    receive
        {allocate,Key,P} ->
            case lookup(Key,L) of
                fail ->
                    P!free,
                    receive
                        {value,V,P} ->
                            dataBase([{Key,V}|L])
                    end;
                {succ,V} ->
                    P!allocated,
                    dataBase(L)
            end;
        {lookup,Key,P} ->
            P!lookup(Key,L),
            dataBase(L)
    end.

lookup(K,L) ->
    case L of
        []        -> fail;
        [{K,V}|_] -> {succ,V};
        [_|Xs]    -> lookup(K,Xs)
    end.

client(DB) ->
    case read() of
        {ok,i} ->
            K = readKey(),
            DB!{allocate,K,self()},
            receive
                free ->
                    V = readVal(),
                    monarch:label(client_writes),
                    DB!{value,V,self()},
                    client(DB);
                allocated ->
                    monarch:label(client_denied),
                    client(DB)
            end;
        {ok,l} ->
            K = readKey(),
            DB!{lookup,K,self()},
            receive
                fail -> monarch:label(client_fail),client_not_found(DB, K);
                {succ,V} -> monarch:label(client_reads), client_found(DB, K, V)
            end,
            client(DB)
    end.

client_found(DB,_,_) -> client(DB).
client_not_found(DB,_) -> client(DB).

read() -> ?SoterOneOf([{ok,i}, {ok,l}]).
% SoterOneOf is defined in grammars.hrl (automatically imported)

readVal() -> monarch:any_nat().

readKey() -> monarch:any_nat().


-module(parikh).
-export([main/0]).

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
            monarch:error("We should be already initialized!");
        {set, Y} ->
            do_serve(Y);
        {get, P} ->
            P ! X,
            do_serve(X);
        bye ->
            died
    end.

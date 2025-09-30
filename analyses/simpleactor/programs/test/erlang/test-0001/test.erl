-module(test).

-export([main/0]).

main() ->
    foo(42).

foo(X) ->
    X+2.


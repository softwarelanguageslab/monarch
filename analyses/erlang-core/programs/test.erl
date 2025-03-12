-module(test).
-export([c/3]).

c(inc, Base, N) ->
    Base+N;
c(_, Base, _) ->
    Base.

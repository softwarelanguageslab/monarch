%% -soter_config(peano). %% NOT SURE WHAT THIS IS, SO DISABLING IT FOR NOW.
-module(state_factory).
-uncoverable("state_mail > 1").
-uncoverable("after_receive > 0, state_mail > 0").
-export([main/0]).

state(N, NewState) ->
    monarch:label_mail("state_mail"),
    receive
        {P,In}->
            monarch:label_mail("after_receive"),
            M = NewState(N,In),
            P ! M,
            state(M, NewState)
    end.

factory(N, NewState) ->
    P=spawn(fun() -> state(N,NewState) end),
    fun(In)->
            P!{self(),In},
            receive
                Out-> Out
            end
    end.

main() ->
    FunWithState = factory(monarch:any_nat(), fun(_X,_Y) -> monarch:any_nat() end),
    call_loop(monarch:any_nat(), FunWithState).

call_loop(1,Fun) -> Fun(monarch:any_nat());
call_loop(N,Fun) -> Fun(monarch:any_nat()),
                  call_loop(N-1,Fun).

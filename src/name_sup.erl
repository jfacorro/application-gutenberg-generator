-module({{NAME}}_sup).

-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

%% admin api
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, {}).

%% behaviour callbacks
init({}) ->
    {ok,
     {
       {one_for_one, 5, 10},
       [
        %% {ChildId, StartFunc, Restart, Shutdown, Type, Modules}
       ]
     }
    }.

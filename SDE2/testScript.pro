/*Prolog Test Script
['sde2_given_predicates.pro','sde2_sp2020.pro'].*/

/* data: simple predict to store data
Prototype:
data(+StoredData,-Variable)

data(StoredData, Variable) :-
        Variable = StoredData,!.*/

allAct([-10.0,5.0,-1.0,2.3,0.0,7.7,-3.5]).

data(oi,[-1.0,-1.0]).
data(we,[[0.0,-1.0],[-1.0,0.0]]). /* for cycle */
/* some 4-D data for simulation/debugging */
data(os1,[1.0, -1.0, 1.0, -1.0]).
data(os2,[-1.0, -1.0, 1.0, -1.0]).
data(os3,[-1.0, -1.0, 1.0, 1.0]).
/* more data for state crowding and other effects */
data(os4,[-1.0,-1.0,1.0,-1.0,1.0]).
data(os5,[-1.0, -1.0, -1.0, -1.0]).
data(os6,[1.0, 1.0, -1.0, -1.0]).

data(os1os3,[[1.0, -1.0, 1.0, -1.0],[-1.0, -1.0, 1.0, 1.0]]).
data(o1o2o3,[[1.0, -1.0, 1.0, -1.0],[-1.0, -1.0, 1.0, -1.0],[-1.0, -1.0, 1.0, 1.0]]).
data(o1o1o1o2o3,[[1.0, -1.0, 1.0, -1.0],[1.0, -1.0, 1.0, -1.0],[1.0, -1.0, 1.0, -1.0],[-1.0, -1.0, 1.0, -1.0],[-1.0, -1.0, 1.0, 1.0]]).
data(w,[[0.0, -1.0, 1.0, -1.0], [-1.0, 0.0, -1.0, 1.0], [1.0, -1.0, 0.0, -1.0], [-1.0, 1.0, -1.0, 0.0]]).

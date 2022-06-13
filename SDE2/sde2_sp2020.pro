/* nextState: Next State computation given the CurrentState and WeightMatrix.
Prototype:
nextState(+CurrentState,+WeightMatrix,-Next)
*/

nextState(CurrentState, WeightMatrix, Next) :-
                netAll(CurrentState,WeightMatrix, NetEntire),
                hop11ActAll(NetEntire, CurrentState, Next),!.

/* updateN: Update the state of the network N times given the CurrentState and
            WeightMatrix.
Prototype:
updateN(+CurrentState,+WeightMatrix,+N,-ResultState)
*/

updateN(CurrentState,_, N, CurrentState) :- N = 0,!.

updateN(CurrentState, WeightMatrix, N, ResultState) :-
                  N > 0,
                  Count is N-1,
                  nextState(CurrentState, WeightMatrix, Next),
                  updateN(Next, WeightMatrix, Count, ResultState),!.



/*findsEquilibrium: Succeeds if finds equilibrium, fails otherwise.
Prototype:
findsEquilibrium(+InitialState,+WeightMatrix,+Range)
*/

findsEquilibrium(InitialState,WeightMatrix,Range) :-
                    Range > 0,
                    nextState(InitialState, WeightMatrix, Next),
                    InitialState = Next,!.

findsEquilibrium(InitialState,WeightMatrix,Range) :-
                    Range > 0,
                    Count is Range -1,
                    nextState(InitialState, WeightMatrix, Next),
                    findsEquilibrium(Next,WeightMatrix,Count),!.

/*energy: determines the total state energy
Prototype:
energy(+State,+WeightMatrix,-E)
*/

energy(State,WeightMatrix,E) :-
          netAll(State,WeightMatrix,Output),
          inner(State,Output,Output2),
          E is (-0.5 * Output2),!.

/*hopTrainAstate: computes the Hopfield weight matrix for only one stored state.
Prototype:
hopTrainAstate(+Astate,-WforState)
*/

auxScalarbyVec(_,[],_,_,[]).

auxScalarbyVec(Scalar,[_|TV],Pos,Num,[HO|TO]) :-
                Pos = Num,
                HO is 0.0,
                PosNew is Pos + 1,
                auxScalarbyVec(Scalar,TV,PosNew,Num,TO),!.

auxScalarbyVec(Scalar,[HV|TV],Pos,Num,[HO|TO]) :-
                HO is HV * Scalar,
                PosNew is Pos + 1,
                auxScalarbyVec(Scalar,TV,PosNew,Num,TO),!.

auxOuter([],_,_,[]).

auxOuter([HV|TV],Vec2,RunNum,[HO|TO]) :-
          auxScalarbyVec(HV,Vec2,0,RunNum,HO),
          Run is RunNum + 1,
          auxOuter(TV,Vec2,Run,TO),!.

hopTrainAstate(Astate,WforState) :-
          auxOuter(Astate,Astate,0,WforState),!.


/*hopTrain: computes the Hopfield weight matrix for a list of stored state.
Prototype:
hopTrain(+ListofStates,-WeightMatrix)
*/

auxAddVec([],[],[]).

auxAddVec([HV1|TV1],[HV2|TV2],[HO|TO]) :-
                HO is HV1 + HV2,
                auxAddVec(TV1,TV2,TO),!.

auxAddMatrix([],[],[]).

auxAddMatrix([HM1|TM1],[HM2|TM2],[HO|TO]) :-
                auxAddVec(HM1,HM2,HO),
                auxAddMatrix(TM1,TM2,TO),!.

hopTrain([],[]).

hopTrain([HListofStates|[]],WeightMatrix) :-
          hopTrainAstate(HListofStates,WeightMatrix),!.

hopTrain([HListofStates|TListofStates],WeightMatrix) :-
          hopTrainAstate(HListofStates,W1),
          hopTrain(TListofStates,W2),
          auxAddMatrix(W1,W2,WeightMatrix),!.

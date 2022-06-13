Tim Driscoll SDE1 4/9/20

Project: A purely declarative implementation of selected hopfield recurrent artifical neural network functions using Prolog.

Contents of Archive:

1. readme.txt
	The readme.txt file contains a simple description of everything that is contained in the SDE2 archive. It includes a description of each file and their contents.
2. sde2.log
	The sde2.log file contains 2 sample uses of each one of the predicates listed in section five of the project description. The predicates are as follows:

nextState
updateN
findsEquilibrium
energy
hopTrainAstate
hopTrain

This file does not include any sample uses of the other auxilary predicates created in the sde2_sp2020.pro file, but they are all implemented within the six predicates that include test samples.

3. sde2_sp2020.pro
	The sde2_sp2020.caml file includes all the predicates that were written to implement the hopfield recurrent artificial neural network. Along with the six main predicates defined above there are four auxilary predicates used to aid the creation of the six main predicates.

Below lists out the prototypes for each of the predicates.

Protoypes:

nextState(+CurrentState,+WeightMatrix,-Next)

updateN(+CurrentState,+WeightMatrix,+N,-ResultState)

findsEquilibrium(+InitialState,+WeightMatrix,+Range)

energy(+State,+WeightMatrix,-E)

auxScalarbyVector(+Scalar,+Vector,+Pos,+Num,-Output)

auxOuter(+Vec1,+Vec2,+RunNum,-Output)

hopTrainAstate(+Astate,-WforState)

auxAddVec(+Vec1,+Vec2,-VecSum)

auxAddMatrix(+Matrix1,+Matrix2,-MatrixSum)

hopTrain(+ListofStates,-WeightMatrix)

Pledge:
On my honor I have neither given nor recieved aid on this exam.

Timothy Driscoll

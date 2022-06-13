Tim Driscoll SDE1 2/20/20

Project: A purely fucntional implementation of selected hopfield recurrent artifical neural network functions using ocaml.

Contents of Archive:

1. readme.txt
	The readme.txt file contains a simple description of everything that is contained in the SDE1 archive. It includes a description of each file and their contents.
2. sde1.log
	The sde1.log file contains 2 sample uses of each one of the functions listed in section six of the project description. The fucntions are as follows:

nextState
updateN
findsEquilibrium
energy
hopTrainAState
hopTrain

This file does not include any sample uses of the other auxilary functions created in the sde1_sp2020.caml file, but they are all implemented within the six functions that includes test samples.

3. sde1_sp2020.caml
	The sde1_sp2020.caml file includes all the functions that were written to implement the hopfield recurrent artificial neural network. Along with the six main functions defined above there is seven auxilary functions used to aid the creation of the six main functions.

Below lists out each of the functions header and signature.

Functions:
let nextState = function (currentState, weightMatrix)
val nextState : float list * float list list -> float list = <fun>

let rec updateN = function (currentState, weightMatrix, n)
val updateN : float list * float list list * int -> float list = <fun>

let rec findsEquilibrium = function (initialState, weightMatrix, range)
val findsEquilibrium : float list * float list list * int -> bool = <fun>

let rec auxMatrixMulti = function (state, weightMatrix)
val auxMatrixMulti : float list * float list list -> float list = <fun>

let energy = function (state, weightMatrix)
val energy : float list * float list list -> float = <fun>

let rec auxScalarbyVec = function (scalar, vector, position, runNum)
val auxScalarbyVec : float * float list * int * int -> float list = <fun>

let rec auxOuter = function (state1, state2, runNum)
val auxOuter : float list * float list * int -> float list list = <fun>

let hopTrainAState = function (astate)
val hopTrainAState : float list -> float list list = <fun>

let rec auxAddVec = function (vec1, vec2)
val auxAddVec : float list * float list -> float list = <fun>

let rec auxAddMatrix = function (matrix1, matrix2)
val auxAddMatrix : float list list * float list list -> float list list = <fun>

let rec auxAddMatrix2 = function (matrix)
val auxAddMatrix2 : float list list list -> float list list = <fun>

let rec hopTrainAllStates = function (allStates)
val hopTrainAllStates : float list list -> float list list list = <fun>

let hopTrain = function(allStates)
val hopTrain : float list list -> float list list = <fun>


Pledge:
On my honor I have neither given nor recieved aid on this exam.

Timothy Driscoll

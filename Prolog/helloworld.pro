%%hello world program

/*go :- nl, write('hello, ECE 3520 world'), nl.

has_part(X,door) :- is_house(X).
is_house(my_house).


bigger(elephant, horse).
bigger(horse, donkey).
bigger(donkey, dog).
bigger(donkey, monkey).

is_bigger(X, Y) :- bigger(X, Y).
is_bigger(X, Y) :- bigger(X, Z), is_bigger(Z, Y).


production(prod2 , ["A" , "a"]).
production(prod1 , ["S" , "AB"]).
pn([prod1 ,prod2]).
ap([],[]).
ap([NH|NT] , [PH|PT] ) :-
production(NH ,PH) , ap(NT,PT).
*/

goal1([X,Y]) :- first(X) , second(Y).

goal1a(Y, [X]) :- first(X) , second([Y]).

goal1b(X,Y) :- first(X) , not(second(Y)).

goal1bb(X) :- first(X) , not(second(X)).

goal2(X) :- first(X) , ! , second(X).

goal2a(X) :- first([X ,G]) , second(G).

first(1,1).
first(2,1).
first([3, 4, 5]).
first([5 ,4]).
second(2).
second([4]).
second(6).

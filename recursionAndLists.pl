prepend(X, L, [X|L]).

addEnd([],X,[X]).
addEnd([H|Tail],X,[H|Tail2]) :- addEnd(Tail,X,Tail2).

getlength(0,[]).
getlength([X|Y], LenResult):- len(Y, L), LenResult is L + 1.

remove(X, [X|Tail], Tail).
remove(X, [H|T], [H|T2]) :- remove(X, T, T2).
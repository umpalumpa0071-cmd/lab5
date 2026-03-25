
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).


union([], L, L).

union([H|T], L, R) :-
    member(H, L),        
    union(T, L, R).

union([H|T], L, [H|R]) :-
    \+ member(H, L),     
    union(T, L, R).

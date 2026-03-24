
sum_num([], _, 0).  

sum_num([H|T], D, S) :-
    H mod 10 =:= D,       
    sum_num(T, D, S1),
    S is S1 + H.

sum_num([H|T], D, S) :-
    H mod 10 =\= D,        
    sum_num(T, D, S).
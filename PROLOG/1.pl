:- set_prolog_flag(encoding, utf8).
count_num(0, 0) :- !.
count_num(N, C) :-
    N1 is abs(N) // 10,
    count_num(N1, C1),
    C is C1 + 1.

more_num(A, B) :-
    count_num(A, CA),
    count_num(B, CB),
    CA > CB,
    write('В первом числе больше цифр'), nl.

more_num(A, B) :-
    count_num(A, CA),
    count_num(B, CB),
    CA < CB,
    write('Во втором числе больше цифр'), nl.

more_num(A, B) :-
    count_num(A, CA),
    count_num(B, CB),
    CA =:= CB,
    write('Количество цифр равно'), nl.
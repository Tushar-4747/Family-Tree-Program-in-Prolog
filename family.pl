% Facts
parent(john, mary).
parent(john, tom).
parent(susan, mary).
parent(susan, tom).
parent(mary, alice).
parent(mary, bob).
parent(paul, alice).
parent(paul, bob).

male(john).
male(tom).
male(paul).
male(bob).

female(susan).
female(mary).
female(alice).

% Rules
father(F, C) :-
    male(F),
    parent(F, C).

mother(M, C) :-
    female(M),
    parent(M, C).

siblings(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

children_of(Parent, Children) :-
    findall(Child, parent(Parent, Child), Children).

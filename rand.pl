% FACTS: GENDER
male(ali).
male(muzher).
male(ibrahim).
male(mohanned).
male(omar).

female(fatima).
female(huda).
female(nora).
female(rand).
female(lina).

% FACTS: PARENTS
parent(ali, muzher).
parent(fatima, muzher).
parent(ali, ibrahim).
parent(fatima, ibrahim).
parent(ali, huda).
parent(fatima, huda).

% Parents: Nora & Muzher
parent(muzher, rand).
parent(nora, rand).
parent(muzher, mohanned).
parent(nora, mohanned).

% Parent: Ibrahim
parent(ibrahim, omar).
parent(ibrahim, lina).

% RULES
% Father rule
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother rule
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Brother rule
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Sister rule
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

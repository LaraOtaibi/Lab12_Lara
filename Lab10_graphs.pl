
% Lab 10 - Graphs
% Task 1: Directed Graph of Cities

% Facts: Directed edges between cities

edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').

edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').

edge('Tabuk', 'Taif').

edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').

edge('Riyadh', 'Dammam').

edge('Dammam', 'Riyadh').
edge('Dammam', 'Qatif').

edge('Qatif', 'Dammam').
edge('Qatif', 'Madinah').

% Rules: Find paths between cities

travel(From, To, Path) :-
    route(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

route(To, To, Visited, Visited).

route(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    route(Next, To, [Next|Visited], Path).

configOk([],[]):-!.

configOk([Ha|Ta],[Hb|Tb]):-
    Ha=Hb,
    configOk(Ta,Tb).

solve(OUTLET,DEVICE,SWITCH):-
    false.

switching([A],S,O):-
    write(A),
    write(S),
    rev(A,S,O).
switching([HOUTLET|TOUTLET],SWITCH,[HO|TO]):-
    switching(TOUTLET,SWITCH,TO),
    rev(HOUSTLET,SWITCH,HO),!.
    
   
    
rev([H|T],SWITCH,[H|X]):-
    S is SWITCH - 1,
    rev(T,S,X).

rev([H|T],1,[Hb|T]):-
    rev(H,Hb),
    !.


rev(1,0).
rev(0,1).

    
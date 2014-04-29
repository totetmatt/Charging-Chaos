
configOk([],[]):-!.

configOk([Ha|Ta],[Hb|Tb]):-
    Ha=Hb,
    configOk(Ta,Tb).

solve(OUTLET,DEVICE,SWITCH):-
    false.

switching([A],S,[O]):-
    rev(A,S,O).
switching([HOUTLET|TOUTLET],SWITCH,[HO|TO]):-
    switching(TOUTLET,SWITCH,TO),
    rev(HOUTLET,SWITCH,HO).
    
rev([],0,[]):-!.   
rev([H],1,[Hb]):-
    write(H),
    rev(H,Hb).   
rev([H|T],SWITCH,[H|X]):-
    rev(T,S,X),
    S is SWITCH + 1.
 




rev(1,0).
rev(0,1).

ler([],0).
ler([H|T], N):-  
   ler(T, N1),  
   N is N1 + 1. 
    
    
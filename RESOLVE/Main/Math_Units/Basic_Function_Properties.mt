Precis Basic_Function_Properties;
    uses Boolean_Theory;

    Definition Is_Identity(F : (D : SSet) -> D) : B =
        For all x : D, F(x) = x;

    Definition Is_Injective(F :(D : SSet) -> (R : SSet)) : B =
        For all x, y : D, 
        F(x) = F(y) implies x = y;

    Corollary Composite_Injective :
        For all D, R, S : SSet, 
        For all F : D -> R,
        For all G : R -> S,
        For all G_of_F : D -> S,
        (Is_Injective(F) and Is_Injective(G)) implies Is_Injective(G_of_F);
    
    Corollary Implied_Injective :
        For all D, R : SSet, 
        For all F : D -> R,
        For all G_of_F : D -> D,
        (D /= Empty_Set and R /= Empty_Set) implies
    		(There exists G: R -> D such that Is_Identity(G_of_F));

    (* Corollary 3 with subset need work. How to input subset?*)

    Definition Is_Surjective(F :(D : SSet) -> (R : SSet)) : B =
        For all y : R,
        There exists x : D such that F(x) = y;

    Corollary Composit_Surjective :
        For all D, R, S : SSet, 
        For all F : D -> R,
        For all G : R -> S,
        For all G_of_F : D -> S,
        (Is_Surjective(F) and Is_Surjective(G)) implies Is_Surjective(G_of_F);

    Corollary Identity_Surjective :
        For all D, R : SSet, 
        For all F : D -> R,
        For all F_of_G : R -> R,
        (There exists G : R -> D such that Is_Identity(F_of_G)) implies Is_Surjective(F);

    Definition Is_Bijective(F :(D : SSet) -> (R : SSet)) : B =
        Is_Injective(F) and Is_Surjective(F);

    Corollary Composit_Bijective :
        For all D, R, S : SSet, 
        For all F : D -> R,
        For all G : R -> S,
        For all G_of_F : D -> S,
        (Is_Bijective(F) and Is_Bijective(G)) implies Is_Bijective(G_of_F);
   
    Corollary Bijective_Identity :
        For all D, R : SSet,
        For all F : D -> R,
        For all F_of_G : R -> R,
        For all G_of_F : D -> D,
        (There exists G : R -> D such that Is_Identity(F_of_G) and Is_Identity(G_of_F)) implies Is_Bijective(F);
(*
   Inductive Definition on n:N of  DI(n,D,C : SSet, m : D -> C, S : SSet) : SSet is
        (i) not(Is_Bijective(m)) implies DI(0,D,C,M,S) = S;
        (ii) S = D implies DI(0,D,C,M,S) = C;
        (iii) S = C implies DI(0,D,C,M,S) = D;
        (iiii) (Is_Bijective(m) or (not(S = D) and not (S = C))) implies DI(0,D,C,M,S) = S;
        (iiiii) if not(Is_Bijective(m)) then FI(0,D,C,M,S) = S;
        (iiiiii) if S = D then FI(0,D,C,M,S) = C;
        (iiiiiii) if S = C then FI(0,D,C,M,S) = D;
        (iiiiiiii) if (Is_Bijective(m) or (not(S = D) and not (S = C))) then FI(0,D,C,M,S) = S;
*)     

    
end Basic_Function_Properties;
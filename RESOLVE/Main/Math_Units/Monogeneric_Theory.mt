Precis Monogenerator_Theory;
    uses Boolean_Theory;
    uses Basic_Function_Properties;

    Definition Is_Monogeneric_for(g : (D : SSet) -> D, b : D) : B =  
        (For all x : D, not(g(x) = b)) and
        Is_Injective(g) and
        ( x : D and x : S and b : S) implies (g(x) : S implies S = D);
        
    Corollary Monogeneric_Implies_Infinite:
        For all D : SSet,
        For all b : D,
        For all g: D -> D,
        For all P: D -> B,
        Is_Monogeneric_for(D,b,g) implies Is_Infinite(D);

    Corollary Monogeneric_Implications:
        For all D : SSet,
        For all b : D,
        For all g: D-> D,
        For all P : D -> B,
        (Is_Monogeneric_for(D,b,g) and P(b)) and (For all x: D, P(x) implies P(g(x))) implies (For all x:D, P(x));
    
    Theorem M1(*an “inductive definition” with foundation function f, successor function s, and input  perturbation function p is satisfied by one and only one induced function i*):
        For all D : SSet,
        For all b : D,
        For all g : D -> D,
        Is_Monogeneric_for(D,b,g) implies
        (For all T, U : SSet , For all f: T-> U , For all s: T*U*D->U , For all p: T*D -> T, 
        There exists i: T*D -> U such that (For all t:T, i(t,b) = f(t) and For all x : D, i(t, g(x)) = s(t, i(p(t,x),x),x));

    Corollary More_Monogeneric_Implications:
        For all D: SSet,
        For all b : D,
        For all g : D->D,
        Is_Monogeneric_for(D,b,g) implies 
        (For all U : SSet, For all c : U, For all s : U*D - > U,
        There exists i : D-> U such that i(t,b) = c) and (For all x : D, i(g(x)) = s(i(x),x);

    Theorem M2 (*Any two monogenerics are isomorphic *):
        For all D, C : SSet,
        For all b : D,
        For all e : C,
        For all g : D -> D,
        For all f : C -> C,
        (Is_Monogeneric_for(D,b,g) and Is_Monogeneric_for(C, e, f)) implies
        (There exists h : D -> C such that h(b) = e and For all x : D, h(g(x)) = f(h(x)) and Is_Bijective(h));

    Theorem M3 (*Is_monogeneric_for is not a vacuous notion*):
        There exists D : SSet and b : D and g: D -> D such that Is_Monogeneric_for(D, b, g);
    
    Theorem M4 (* In isomorphic monogenerics, isomorphic inductive definitions will produce isomorphic functions *)
        For all D1, D2 : SSet and b1 : D1 and b2 : D 2 and g1 : D1 -> D1 and g2: D2 -> D2 and h : D1 -> D2 
                and T : SSet and U : SSet amd f: T-> U and s1: T * U * D1 -> U and s2 : T * U * D2 -> U 
                and p1: T * D1 -> T and p2: T * D2 -> T,
    
end Monogenerator_Theory;
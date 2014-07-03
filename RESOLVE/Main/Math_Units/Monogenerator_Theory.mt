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
    
    Theorem M1 (*Inductive Definition with foundation function f, successor function s, and input  perturbation function p is satisfied by one and only one induced function i*):
        For all D : SSet,
        For all b : D,
        For all g : D -> D,
        if Is_Monogeneric_for(D,b,g) then
        (T, U : SSet and f: T -> U and s: T * U * D -> U and p : T * D -> T) and
        There exists i : T * D -> U such that (For all t :T, i(t,b) = f(t) and For all x : D, i(t, g(x)) = s(t, i(p(t,x),x),x));

    Corollary More_Monogeneric_Implications:
        For all D: SSet,
        For all b : D,
        For all g : D->D,
        Is_Monogeneric_for(D,b,g) implies 
        (For all U : SSet, For all c : U, For all s : U*D -> U,
        There exists i : D-> U such that i(t,b) = c) and (For all x : D, i(g(x)) = s(i(x),x));

    Theorem M2:
        For all D, C : SSet,
        For all b : D,
        For all e : C,
        For all g : D -> D,
        For all f : C -> C,
        if (Is_Monogeneric_for(D,b,g) and Is_Monogeneric_for(C, e, f)) then
        There exists h : D -> C such that h(b) = e and For all x : D, h(g(x)) = f(h(x)) and Is_Bijective(h);

    Theorem M3:
        There exists D : SSet and b : D and g: D -> D such that Is_Monogeneric_for(D, b, g);
    
    Implicit Definition IndFn( T, U, D: SSet, f: T->U, s: T*U*D->U, p: T*D->T, b: D, g: D->D): T*D->U is
        For all x: D, (x = b or not(Is_Monogeneric_for( D, b, g ))),implies IndFn(T, U, D, f, s, p, b, g)(t, x) = f(t) and
        (Is_Monogeneric_for( D, b, g ) implies IndFn(T, U, D, f, s, p, b, g)(t, g(x)) = s(t, IndFn(T, U, D, f, s, p, b, g)(p(t, x), x), x);
    
    Theorem M4:
        For all D1, D2 : SSet, For all b1 : D1, For all b2 : D2, For all g1 : D1 -> D1, For all g2: D2 -> D2, For all h : D1 -> D2, 
        For all T : SSet, For all U : SSet, For all f: T-> U, For all s1: T * U * D1 -> U, For all s2 : T * U * D2 -> U, 
        For all p1: T * D1 -> T, For all p2: T * D2 -> T,
        Is_Monogeneric_for(D1, b1, g1) and Is_Monogeneric_for(D2, b2, g2) and h(b1) = b2) and For all x : D1, h(g1(x)) = g2(h(x)) 
            and for all t : T, for all u : U, s1(t, u, x) = s2(t, u, h(x)) and p1(t, x) = p2(t, h(x)) 
        implies For all x: D1, for all t : T, IndFn(T, U, f, D1, s1, p1, b1, g1)(t, x) = IndFn(T, U, f, D2, s2, p2, b2, g2)(t, h(x)); 
    
end Monogenerator_Theory;
Precis Basic_Ordering_Theory;
    uses Boolean_Theory, Set_Theory;

    Definition Is_Reflexive(rho : (D : SSet) * D -> B) : B =
        For all x : D, rho(x, x);
    
    Definition Is_Transitive(rho : (D : SSet) * D -> B) : B =
        For all x , y, z : D,
        (rho(x, y) and rho(y, z)) implies rho(x, z);

    Definition Is_Symmetric(rho : (D : SSet) * D -> B) : B =
        For all x, y : D,
        rho(x, y) implies rho(y, x);

    Definition Is_Antisymmetric(rho : (D: SSet) * D -> B) : B =
        For all x, y : D,
        (rho(x, y) and rho(y, x)) implies x = y;
    
    Definition Is_Asymmetric(rho : (D: SSet) * D -> B) : B =
        For all x, y : D,
        rho(x, y) implies not rho(y, x);
    
    Definition Is_Irreflexive(rho : (D: SSet) * D -> B) : B =
        For all x : D,
        not rho( x, x);

    Theorem Relation_1:
        For all D : SSet,
        For all rho : D * D -> B,
        Is_Symmetric(rho) implies (Is_Transitive(rho) implies Is_Reflexive(rho));

    Definition Is_Total(rho : (D: SSet) * D -> B) : B =
        For all x, y: D,
        rho(x, y) or rho(y, x);

    Theorem Relation_2:
        For all D : SSet,
        For all rho : D * D -> B,
        Is_total(rho) implies Is_Reflexive(rho); 

    Definition Is_Trichotomous(rho : (D: SSet) * D -> B) : B =
        For all x, y: D,
        rho(x, y) or x = y or rho(y, x);
    
    Definition Transposes_under(theta : (D: SSet) -> D , rho : D * D -> B) : B =
        For all x, y : D,
        rho(x, y) implies rho(theta(y), theta(x));

    Definition Is_Preserved_by(omicron : (D: SSet)*D -> D , rho : D * D -> B) : B =
        For all x, y, z : D,
        rho(x, y) implies rho(omicron( x, z), omicron(y, z));
    
    Definition Is_Preordering(nu : (D : SSet) * D -> B) : B =
        Is_Reflexive(nu) and Is_Transitive(nu);
    
    Definition Is_Partial_Ordering(nu : (D : SSet) * D -> B) : B =
        Is_Preordering(nu) and Is_Antisymmetric(nu);
    
    Definition Is_Total_Preordering(nu : (D :SSet) * D -> B) : B =
        Is_Transitive(nu) and Is_Total(nu);

    Corollary Preordering_Completeness:
        For all D : SSet,
        For all nu : D * D -> B , 
        Is_Total_Preordering(nu) implies Is_Preordering(nu);
    
    Definition Is_Total_Ordering(nu : (D : SSet) * D -> B) : B =
        Is_Total_Preordering(nu) and Is_Antisymmetric(nu);
     
    Definition Is_Well_Ordering(nu : (D : SSet) * D -> B) : B =
        Is_Transitive(nu) and Is_Antisymmetric(nu) and 
        (For all S : D, There exists m : S such that For all x : S, nu(m, x));

    Corollary Well_Ordering_Completeness:
        For all D : SSet,
        For all nu : D *D -> B,
        Is_Well_Ordering(nu) implies Is_Total_Ordering(nu);

   Corollary Well_Ordering_Implications:
        For all D : SSet,
        For all nu : D * D -> B,
        Is_Well_Ordering(nu) implies 
            (For all I : D, if
                (For all y : D, if
                 (For all x : D  (nu(x,y) and x /= y), --is subest of I)
                    then y : I,),
                        then I = D;

   Definition Is_Up_Complete_Ordering(nu : (D : SSet) * D -> B) : B = 
        Is_Total_Ordering(nu) and 
            (For all S : D, 
                For all S = Empty_Set,
                If (There exists u : D such that For all x : S, nu(x,u)) then 
                    (There exists m : D such that For all x : S, nu(x,m) and 
                        For all b : D, if (For all x : S,nu(x,b)) then nu(m,b)));
            
   

    Corollary Is_Up_Complete_Ordering_Implications :
        For all D : SSet,
        For all nu : D * D -> B,
        For all S : D,
        For all S = Empty_Set;
        (There exists u : D such that (For all x : S, nu(x,u)) and Is_Up_Complete_Ordering(nu)) implies
            There exists m : D such that 
                (For all x : S, nu(x,m) and 
                    For all b : D, if (For all x : S, nu(x,b)) then nu(m,b)); 

    Definition Is_Strict_Partial_Ordering(nu : (D : SSet) * D -> B) : B =
        Is_Transitive(nu) and Is_Irreflexive(nu);

    Definition Is_Strict_Ordering(nu : (D : SSet) * D -> B) : B =
        Is_Strict_Partial_Ordering(nu) and Is_Trichotomous(nu);

    Definition Is_Dense_Ordering(nu : (D : SSet) * D -> B) : B =
        Is_Strict_Partial_Ordering(nu) and 
        (For all x, z : D, 
        nu(x, z) implies (There exists y : D such that nu(x, y) and nu(y, z)));
   


end Basic_Ordering_Theory;
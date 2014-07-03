Precis Basic_Binary_Relation_Theory;
    uses Boolean_Theory;

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
(*
    Theorem Relation_1:
    	For all D : SSet,
        For all rho : D * D -> B,
        Is_Symmetric(rho) implies (Is_Transitive(rho) implies Is_Reflexive(rho)); 
*)
    Definition Is_Total(rho : (D: SSet) * D -> B) : B =
        For all x, y: D,
        rho(x, y) or rho(y, x);
(* 
    Theorem Relation_2:
    	For all D : SSet,
        For all rho : D * D -> B,
        Is_Total(rho) implies Is_Reflexive(rho); 
*)
    Definition Is_Trichotomous(rho : (D: SSet) * D -> B) : B =
        For all x, y: D,
        rho(x, y) or x = y or rho(y, x);
    
    Definition Transposes_under(theta : (D: SSet) -> D , rho : D * D -> B) : B =
        For all x, y : D,
        rho(x, y) implies rho(theta(y), theta(x));

    Definition Is_Preserved_by(omicron : (D: SSet)*D -> D , rho : D * D -> B) : B =
        For all x, y, z : D,
        rho(x, y) implies rho(omicron( x, z), omicron(y, z));

end Basic_Binary_Relation_Theory;
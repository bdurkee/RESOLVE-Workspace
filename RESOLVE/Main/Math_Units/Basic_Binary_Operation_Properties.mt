Precis Basic_Binary_Operation_Properties;
    uses Boolean_Theory;

    Definition Is_Associative(omicron : (D : SSet) * D -> D): B =
        For all x, y, z : D,
        omicron(x, omicron(y,z)) = omicron(omicron(x, y), z);

    Definition Is_Commutator_for(omicron : (D : SSet) * D -> D, c : D) : B = 
        For all y : D,
        omicron(c, y) = omicron(y, c);
   
    Definition Is_Commutative(omicron : (D : SSet) * D -> D, x : D) : B = 
       Is_Commutator_for(omicron, x);  

    Definition Is_Right_Cancelable_for(omicron : (D : SSet) * D -> D, c : D) : B =
        For all x, y : D,
        (omicron(x, c) = omicron(y, c)) implies x = y;

    Definition Is_Right_Cancelative(omicron : (D : SSet) * D -> D, c : D) : B = 
        Is_Right_Cancelable_for(omicron, c);
        
    Definition Is_Right_Identity_for(omicron : (D : SSet) * D -> D, i : D) : B =
        For all x : D, 
        omicron(x, i) = x;

    Definition Is_Left_Identity_for(omicron : (D : SSet) * D -> D, j : D) : B =
        For all x : D, 
        omicron(j, x) = x;

    Definition Is_Identity_for(omicron : (D : SSet) * D -> D, i : D) : B =
        Is_Right_Identity_for(omicron, i) and Is_Left_Identity_for(omicron, i);

     Theorem Identity_Equality :
    	For all D : SSet,
        For all omicron : D * D -> D,
        For all i, j : D,
        (Is_Right_Identity_for(omicron, i) and Is_Left_Identity_for(omicron, j)) implies i = j;
  
    Definition Is_Right_Invertable_for(omicron : (D : SSet) * D -> D, x : D) : B =
        There exists y, i : D such that Is_Right_Identity_for(omicron, i) and (omicron(x, y) = i);

    Theorem Associative_and_Right_Invertable_for :
    	For all D : SSet,
        For all omicron : D * D -> D,
        For all x : D,
        (Is_Associative(omicron) and Is_Right_Invertable_for(omicron, x)) implies Is_Right_Cancelable_for(omicron, x);
   
    Definition Is_Inverse_for(omicron : (D : SSet) * D -> D, i : D, omega : D -> D) : B =
        Is_Identity_for(omicron, i) and 
        (For all x : D, omicron(x, omega(x)) = omicron(omega(x), x)) = i; 
    
    Definition Is_Right_Distributive_over(omicron : (D : SSet) * D -> D, kappa : D * D -> D) : B =
        For all x, y, z : D,
        kappa(omicron(x, y), z) = kappa(omicron(x, z), omicron(y, z));

    Definition Is_Left_Distributive_over(omicron : (D : SSet) * D -> D, kappa : D*D -> D) : B =
        For all x, y, z : D,
        omicron(x, kappa(y, z)) = omicron(kappa(x, y), kappa(x, z));
    
    Definition Is_Distributive_ove(omicron : (D : SSet) * D -> D, kappa : D * D -> D) : B =
        Is_Right_Distributive_over(omicron, kappa) and Is_Left_Distributive_over(omicron, kappa);

    Definition Is_Right_Zero_for(omicron : (D : SSet) * D -> D, z : D) : B =
        For all x : D,
        omicron(x, z) = z;
    
    Definition Is_Left_Zero_for(omicron : (D : SSet) * D -> D, z : D) : B =
        For all x : D,
        omicron(z, x) = z;

    Corollary Zero_Equality :
    	For all D : SSet,
        For all omicron : D * D -> D,
        For all zr : D, 
        For all zl : D,
        (Is_Right_Zero_for(omicron, zr) and Is_Left_Zero_for(omicron, zl)) implies zr = zl;
       
    Definition Is_Zero_for(omicron : (D : SSet) * D -> D, z : D) : B =
        Is_Right_Zero_for(omicron, z) and Is_Left_Zero_for(omicron, z);

--    Definition Is_Factorable_for(omicron : (D : SSet) * D -> D, a : D) : B =
  --      There exists x, y : D such that omicron(x, y); --and (x /= a and x /= y and y /= a);

end Basic_Binary_Operation_Properties;
Precis Basic_Natural_Number_Theory; 
				uses Monogenerator_Theory, Basic_Binary_Operation_Properties, Basic_Ordering_Theory;

	 Categorical Definition introduces
        N : SSet, 
        0 : N, 
        suc : N -> N 
    related by
        (Is_Monogeneric_for(N,0,suc));
(* This is the type of inductive definition that I am working on. I can't figure out how to word the first line.
    Inductive Definition on n: N of plus((m : N), (n : N) is 
        (i) m + 0 = m;
        (ii) m + suc(n) = suc(m + n); 
*)(*   
    Corollary ID1 :
        Is_Right_Identity_for(+,0);
*)(*
    Theorem N1:
        Is_Associate(+);
*)(*
    Theorem N2:
        Is_Left_Identity_for(+,0);
*)(*
    Corollary N2A:
        Is_Monoid(N,0,+);
*)    
    Theorem N3:
        For all m : N,
        For all n : N,
            suc(m) + n = suc(m + n);
(*    
    Theorem N4:
        Is_Commutative(+);
*)(*    
    Corollary N4A:
        Is_Abelian_Monoid(N,0,+);
*)(*    
    Theorem N5: 
        Is_Right_Cancelative(+);
*)
    Theorem N6:
        For all n : N,
            n = 0 or 
                (There exists p : N such that n = suc(p));
(*
    Corollary N6A:
        N6 implies not(Is_Factorable_for(+,0);
*)

    Theorem N7:
        For all S: N,
            ((0 : S and 1 : S) and 
                (For all m : S, For all n : S, m + n : S)) implies 
        S = N;

    Definition Is_Alg_N_N_Like( D: SSet, i, g: D, omicron: D * D -> D): B = 
        (g = i and Is_Monoid(D, i, omicron) and 
            not(Is_Factorable_for(omicron, i)) and 
                Is_Right_Cancelative(omicron) and
                    (For all S: D, (i : S and g : S)) and 
                        (For all x : S, for all y : S, omicron(x,y) : S) implies 
        S = D );
(*
    Corollary D1A:
        Is_Alg_N_N_Like(*N, 0, 1, +);
*)
(*
    Theorem N8:
        For all D : SSet,
        For all i : D,
        For all g : D,
        For all omicron: D * D -> D,
            Is_Alg_N_N_Like(D,i,g,omicron) implies 
             ((There exists h: N -> D such that h(1) = g) and
                (For all m : N, 
                    (h(m) = i implies m = 0 and m = 0 implies h(m)) and
                        For all n : N,
                         h(m+n) = omicron(h(m),h(n)) and Is_Bijective(h)));
*)(*  
    Corollary N8A: 
        For all D1 : SSet,
        For all D2 : SSet,
            For all I1, I2, G1, G2 : D,
            For all Omicron1: D1 * D1 -> D1,
            For all Omicron2 : D2 * D2 -> D2,
                (Is_Alg_N_N_Like(D1, I1, G1, Omicron1) and
                    Is_Alg_N_N_like(D2, I2, G2, Omicron2)) implies
                        There exists h: D1 -> D2 such that 
                            (h(I1) = I2 and h(G1) = G2 and
                                For all x, y : D1,
                                    h(Omicron1(x,y))=Omicron2(h(x),h(y)) and
                                        Is_Bijective(h));
*)(*
    Corollary N8B:
        For all D: SSet,
        For all T : SSet,
        For all U : SSet,
        For all i, g : D,
        For all omicron: D * D -> D,
        For all f : T -> U,
        For all s : T * U * D -> U,
        For all p : T * D -> T,
            (Is_Alg_N_N_Like(D, i, g, omicron)) implies
                (There exists (j : T * D -> U) such that
                    For all t : T, 
                        j(t, i) = f(t)) and
                For all x : D,
                    j(t, omicron(x,g)) = s(t,j(p(t,x),x),x);
*)
    Definition ( m: N) <= (n: N) : B =
        There exists i : D such that m + i = n;
(*
    Theorem N9:
        Is_Total_Order(<=);
*)
(*
    Theorem N10:  
        Is_Preserved_by(+, <= );
*)
    Theorem N11: 
        For all S:(N),
	        if (0 : S and ({ m: N | m <= n } : S) implies suc(n) : S)
	            then S = N;
(*
	Corollary N11AS:  Is_Well_Ordering( <= );
*)(*
    Definition Is_WO_N_N_Like((D : SSet) * D -> D): B = ( 
	    Is_Well_Ordering( <= ) and 
            For all x: D, 
             There exists y: D such that y not(<=) x and 
                For all S:(D),
                For all S = empty_set,
	    	        if (For all w: D, For all x: S, if w <= x, then w : S and 
		                For all x: S, There exists y: S such that y not(<=) x)
		               then S = D;
*)(*
	Corollary DA:  
        Is_WO_N_N_Like( N, <= );
*)(*
    Theorem N12: 
        For all D: SSet,
        For all D = not(empty_Set), 
        For all rho: D*D->B, 
            if Is_WO_N_N_Like( D, rho )
	        then There exists h: N->D such that 
                For all m, n: N, 
                    ( m <= n ) = ( h(m) <= h(n) ) and Is_Bijective( h );
*)(*	
    Corollary N12A:  
        For all D1, D2: SSet,
        For all D1, D2 /= empty_set, 
        For all rho1: D1*D1->B, 
        For all rho2: D2*D2->B,  
		    if Is_WO_N_N_Like( D1, rho ) and 
                Is_WO_N_N_Like( D2, rho2 ) 
                then There exists h: D1->D2 such that
			        For all x, y: D1, ( x rho1 y ) = ( h(x) rho2 h(y) ) and 
                        Is_Bijective( h );
*)
    Definition 2: 
        N = ( suc(1) );
    Definition 3: 
        N = (suc(2));
    Definition 4: 
        N = (suc(3));
    Definition 5: 
        N = (suc(4));
    Definition 6: 
        N = (suc(5));
    Definition 7: 
        N = (suc(6));
    Definition 8: 
        N = (suc(7));
    Definition 9: 
        N = ( suc(8));

(* 
    Inductive Definition on n: N of ( m: N )*( n ): N is
	     (i): m*0 = 0;
	    (ii): m*suc(n) = m*n + m;
*)(*	
    Corollary 1:  
        Is_Right_Zero_for( *, 0 );
*)
    Theorem N13: 
        --Is_Right_Identity_for( *, 1 ) implies
            For all n : N,
                n*1 = n;

    Theorem N14: 
        --Is_Right_DistriButive_over( +, * ) implies
            For all k, m, n : N,
                (k + m)*n = k*n + m*n;

    Theorem N15: 
        For all k, m, n: N, 
            if k <= m then k*n <= m*n;

    Theorem N16: 
        --Is_Left_DistriButive_over( +, * ) implies 
            For all m, n, k : N,
                k*(m + n) = k*m + k*n;

    Theorem N17: 
       --Is_Associative( * ) implies 
            For all m,n,k : N,
                k*(m*n) = (k*m)*n;

    Theorem N18: 
        --Is_Commutative( * )implies
        For all m, n : N,
            m*n = n*m;
	
end Basic_Natural_Number_Theory;
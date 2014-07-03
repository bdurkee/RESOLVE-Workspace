Precis Basic_Integer_Theory;
    uses Monogenerator_Theory, Basic_Function_Properties, Basic_Ordering_Theory, (*Basic_Algebraic_Structures,*) Basic_Natural_Number_Theory;
    
   Categorical Definition introduces Z: SSet, 0 : Z, NB : Z -> Z related by (Is_Monogeneric_for(Z, 0, NB));
(*The first line of the following inductive theorems is incorrect, but that is the only way that I could get it to go through, I need to fix them so they are logicall correct*)
    Inductive Definition n : Z is
        (i) Is_Neg(0) = false;
        (ii) Is_Neg(NB(n)) = not(Is_Neg(n));

    Inductive Definition n : Z is
        (i) -0 = 0;
        (ii) (if Is_Neg(n) then -NB(n) = n) and (if not(Is_neg(n)) then -NB(n) = -n);

    Theorem I1:
        For all n : Z,
        If Is_Neg(n) then NB(n) = -n;
    
    Theorem I2:
        For all n : Z,
        -(-n)=n;

    Inductive Definition n : Z is
        (i)suc(0) = NB(NB(0));
        (ii)(if Is_Neg(n) then suc(NB(n)) = NB(NB(NB(n)))) and (if not(Is_Neg(n)) then suc(NB(n)) = -n);

    Theorem I3:
        For all n : Z,
        If not(Is_neg(n)) then suc(n) = NB(NB(n));

    Corollary I3A:
        For all n : Z,
        (if Is_Neg(n) then NB(n) = -n) and (if not(Is_Neg(n)) then NB(n) = -suc(n));

    Theorem I4:
        For all n : Z,
        suc(-suc(n)) = -n;
    
    Corollary I4A:  
        If (For all n : Z, suc(-suc(n)) = -n) then Is_Bijective(suc);
    
    Inductive Definition (m: Z) + (n: Z): Z is
        (i) m + 0 = m;
        (ii)(if Is_Neg(n) then m +NB(n) = -(-m+n)) and (if not(Is_Neg(n)) then m + NB(n) = - suc(-m+n));
(*
    Corollary Inductive_A: 
        Is_Right_Identity_for(+, 0);
 *)   
    Corollary Inductive_B:
        For all m, n : Z,
        (if Is_Neg(n) then m + NB(n) = -(-m+n)) and (if not(Is_Neg(n)) then m + NB(n) = -suc(-m+n));

    Corollary Inductive_C:
        For all m : Z,
        For all n : Z,
        (Is_Neg(n) implies (m + NB(NB(n))) = -suc(-m+n)) and
        (not(Is_Neg(n) implies (m + NB(NB(n))) = suc(m+n)));
(*        
    Theorem I5:
        Is_Homomorphism_for(+,-);
*)
    Theorem I6:
        For all m, n : Z,
        suc(m+n) = m + suc(n);
(*
    Theorem I7:
        Is_Associative(+);
*)(*
    Theorem I8:
        Is_Left_Identity_for(+,0);
*)(*
    Corollary I8A:
        Is_Left_Identity_for(+,0); implies Is_Identity_for(+, 0);
*)
    Theorem I9:
        For all m, n : Z,
        suc (m + n) = suc(m) + n and suc(m + -n) = suc(m) + -n;
(*
    Theorem I10;
        Is_Commutative(+);
*)(*  
    Corollary I10A:
        Is_Commutative(+) implies Is_Inverse_for(+, -);
*)(*
    Corollary I10B:
        Is_Commutative(+) implies Is_Abelian_Group( Z, 0, +, -);
*)
    Definition D1:
        NN : Z = {n : Z | not(Is_Nef(n))};
(*
    Theorem I11:
        For all m, n : Z,
        (if m : NN and n : NN then (m + n) : NN) and ( if m : {0} Z~ZNN and n : Z~NN, then (m+n) : Z~NN);
*)
    Corollary I11A:
       I11 implies alpha(NN*NN) : NN;

    Corollary I11B:
        I11 implies Is_Abelian_Monoid(NN, 0, alpha(NN*NN));
    
    Corollary I11C:
        I11 implies Is_Right_Cancelative(alpha(NN*NN));

    Theorem I12:
        For all n : Z,
        (n : NN and -n : NN) implies n = 0;

    Corollary I12A:
        not(Is_Factorable_for(nn*NN,0));

    Definition D2: 
        Z = (suc(0));

    Corollary D2A:
        For all m : Z,
        sux(m) = m + 1 ;
    
    Corollary D2B:
        For all n : Z,
        (0 <= n implies NB(n) = -(n + 1)) and (0 > n implies NB(n) = -n);

    Corollary D2C:
        1 : NN;
    
    Corollary D2D:
        1 /= 0;

    Corollary D2E:
        For all T : Z,
        (1 : T  and ( For all m, n : T, (m + n) : T and -m : T)) implies T = Z;

    Corollary D2F:
        For all S : NN, 
            (( 0 : S and 1 : S) and 
                (For all m : S, 
                For all n : S, 
                    (m + n) : S ))
        implies S = NN; 

    Corollary D2G:
        Is_Alg_N_N_Like(NN,0,1, NN*NN);
(* ??
    Categorical reidentification  of (N, 0, 1, + ) with (NN, 0, 1, NN*NN) justified by 
        (Is_Alg_N_N_Like(NN, 0, 1, NN*NN)) concealing NN;
*)
    Definition (m: Z) <= (n: Z) : B = ( 
        n + -m : N);
(*    
    Corollary D3A:
        Is_Transitive(<=);

    Corollary D3B:
        Is_Antisymmetric(<=);

    Corollary D3C:
        Is_Total(<=);

    Corollary D3D:
        Is_Total_Ordering(<=);

    Corollary D3E:
        Is_Total_Ordering(<=N*N);

    Corollary D3F:
        Is_Preserved_by(+, <=);

    Corollary D3G:
        Is_Preserved_by(NN*NN, ,<=NN*NN);
*)
    Corollary D3H:
        For all m,n : Z,
       -- For all n : Z,
            (m <= n implies -n <= -m) and 
        (-n <= -m implies n <= m);

    Corollary D3I:
        For all n : Z,
            Is_Neg(n) = (not(0<=n));
    
    Corollary D3J:
        1 <= 0;
(*
    Inductive Definition D4  is
        (i)(n : N implies Z = n);
        (ii)(not(n : N) implies Z = -n);
*)
    Corollary D4A:
        |dot| : Z -> N;
    
    Corollary D4B:
        For all n : Z,
            |(|n|)| = |n|;
        
    Corollary D4C:
        For all n : Z,
            |-n| = |n|;
    
    Definition Is_Alg_Int_Like( D: SSet, g: D, omicron: D*D->D, theta : D->D, nu: D*D->B ): B = ( 
		theta(omicron,not(nu(g,g))) and 
        Is_Abelian_Group(D, omicron(g, theta(g)), omicron, theta) and 
        Is_Total_Ordering( nu ) and 
        Is_Preserved_by( omicron, nu ) and 
            For all T: D, 
                if (g : T and 
                    For all x, y: T, omicron(x,y) : T and 
                    theta(x) : T)
            then T = D;
(*	
    Corollary D5A:  
        Is_Alg_Int_Like( Z, 1, +, -, <= );
*)(*
    Theorem I13: 
        For all D: SSet, 
        For all g: D, 
        For all omicron: D*D->D, 
        For all theta : D->D, 
        For all nu: D*D->B, 
            if Is_Alg_Int_Like( D, g, omicron, theta , nu )
            then There exists h: Z->D such that h(1) = g and 
            For all m, n: Z,
		        h(m + n) = omicron(h(m), h(n)) and 
                h(-n) = theta( h(n) ) and 
                ( m <= n ) = ( h(m) nu h(n) ) and 
                Is_Bijective( h );
*)(*	
    Corollary I13A:  
        For all D1, D2: SSet, 
        For all g1, g2: D, 
        For all omicron1, omicron2: D*D->D, 
        For all theta1, theta2: D->D, 
    	For all nu1, nu2: D*D->B, 
            if (Is_Alg_Int_Like( D1, g1, omicron1, theta1, nu1 ) and 
			    Is_Alg_Int_Like( D2, i2, g2, omicron2, theta2, nu2 )) then 
                    There exists h: D1->D2 such that 
				        h(g1) = g2 and 
                        For all x, y: D1, 
                            h(omicron1(x,y)) = omicron2(h(x), h(y)) and 
                            h(theta1(n)) = theta2( h(n)) and
		                    (nu1(x,y)) = ( nu2(h(x), h(y)) ) and 
                            Is_Bijective( h );
*)(* inductive not complete
    Inductive Definition on n: Z of (m: Z)*(n): Z is 
    	 (i)	m*0 = 0,
 		(ii)	m*NB(n) if ;
*)(*
	Corollary 1:  
        Is_Right_Zero_for( *, 0 );
*)(*
	Corollary 2:  
        Is_Right_Identity_for( *, 1 );
*)(*
	Theorem I14:  
        Is_Right_Distributive_over( +, * );
*)(*
	Theorem I15:  
        For all m, n: Z, 
            -(m*n) = (-m)*n;
*)(*
	Theorem I16:  
        For all m, n: Z, 
            m*(-n) = -(m*n);
*)(*
	Theorem I17:  
        For all m, n: Z, 
            m*suc(n) = m*n + m;
*)(*
	Theorem I18:  
        Is_Left_Distributive_over( +, * );
*)(*
	Theorem I19: 
        Is_Associative( * )
*)(*
	Theorem I20:  
        Is_Left_Zero_for( *, 0 );
*)(*
	Theorem I21:  
        Is_Left_Identity_for( *, 1 );
*)(*
	Theorem I22:  
        Is_Commutative( * );
*)(*
	Theorem I25:  
            not( Is_Composite_for( *, 0 ));
*)(*
	Corollary I25A:  
        For all n: Z, 
            if n /= 0 then 
                Is_Right_Cancelable_for( *, n );
*)(*
	Corollary I25B:  
        For all n: Z, 
            if n /= 0 
            then Is_Cancelable_for( *, n );
*)(*	
    Corollary I25C:  
        Is_Integral_Domain( Z, 0, 1, -, +, * );
*)
end Basic_Integer_Theory;
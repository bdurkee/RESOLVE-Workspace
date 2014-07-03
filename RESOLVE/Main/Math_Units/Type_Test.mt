Precis Type_Test;

	(*********
	 * Types *
	 *********)

	Definition Z : MType;
	Definition N : MType;
	Definition C : MType;

	Definition Foo : MType -> MType;



	(***************
	 * Definitions *
	 ***************)

	Definition TakesZ(i : Z) : B;
	Definition TakesN(n : N) : B;
	Definition TakesFooZ(zs : Foo(Z)) : B;

	Definition TakesZxZ(i, j : Z) : B;

	Definition Bar(e : Entity) : Entity;

	Definition Some(T : MType) : T;
	Definition Identity1(T : MType, t : T) : T;



	(**********************
	 * Type Relationships *
	 **********************)

	Type Theorem N_Subset_of_Z:
		For all n : N,
			n : Z;

	Type Theorem Foo_Subset_Thm:
		For all T : MType,
		For all R : Powerset(T),
		For all r : Foo(R),
			r : Foo(T);
	
	Type Theorem Bar_Consistent:
		For all T : MType,
		For all t : T,
			Bar(t) : T;
	
	Type Theorem Cartesian_Product_Subset_Thm:
		For all T1, T2 : MType,
		For all R1 : Powerset(T1),
		For all R2 : Powerset(T2),
		For all r1 : R1,
		For all r2 : R2,
			(r1, r2) : (T1 * T2);

	Type Theorem Function_Arrow_Subset_Thm:
		For all T1, T2 : MType,
		For all R1 : Powerset(T1),
		For all R2 : Powerset(T2),
		For all r : (R1 -> R2),
			r : (T1 -> T2);

	Type Theorem Empty_Set_In_All_Powersets:
		For all T : MType,
			Empty_Set : Powerset(T);
	
	Type Theorem Cartesian_Product_Associative:
		For all U, V, W : MType,
		For all uvw : (U * (V * W)),
			uvw : (U * V * W);
	



	(************
	 * Theorems *
	 ************)

	Theorem A:
		For all i : Z,
			TakesZ(i);

	Theorem I:
		For all n : N,
			TakesZ(n);

	Theorem D:
		For all s : Foo(N),
			TakesFooZ(s);

	Theorem E:
		For all i : Z,
			TakesZ(Bar(i));

	Theorem F:
		For all n, m : N,
			TakesZxZ(n, m);

end;

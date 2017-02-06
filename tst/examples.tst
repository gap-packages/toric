##
## these examples should return the same output as described in 
## the toric documentation
##
gap> LoadPackage("toric");
true

#
# Chapter 2: 2 cones and semigroups
#

#
gap> L:=[[1,0,0],[1,1,0],[1,1,1],[1,0,1]];; v:=[0,0,1];;
gap> InsideCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[1,-7];; InsideCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[4,-3];; InsideCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[4,-4];; InsideCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[4,-2];; InsideCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[4,-1];; InsideCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[4,1];; InsideCone(v,L);
true

#
gap> L:=[[1,0,0],[1,1,0],[1,1,1],[1,0,1]];; v:=[0,0,1];;
gap> InDualCone(v,L);
true
gap> L:=[[1,0],[3,4]];; v:=[1,-7];; InDualCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[4,-3];; InDualCone(v,L);
true
gap> L:=[[1,0],[3,4]];; v:=[4,-4];; InDualCone(v,L);
false
gap> L:=[[1,0],[3,4]];; v:=[4,-2];; InDualCone(v,L);
true
gap> L:=[[1,0],[3,4]];; v:=[4,-1];; InDualCone(v,L);
true
gap> L:=[[1,0],[3,4]];; v:=[4,1];; InDualCone(v,L);
true

#
gap> L:=[[1,0],[3,4]];; DualSemigroupGenerators(L);
[ [ 0, 0 ], [ 0, 1 ], [ 1, 0 ], [ 2, -1 ], [ 3, -2 ], [ 4, -3 ] ]
gap> L:=[[1,0,0],[1,1,0],[1,1,1],[1,0,1]];;
gap> DualSemigroupGenerators(L);
[ [ 0, 0, 0 ], [ 0, 0, 1 ], [ 0, 1, 0 ], [ 1, -1, 0 ], [ 1, 0, -1 ] ]

#
gap> Perps:=[[1,0],[-1,0],[0,1],[0,-1]];
[ [ 1, 0 ], [ -1, 0 ], [ 0, 1 ], [ 0, -1 ] ]
gap> A:=[0,4,0,3];
[ 0, 4, 0, 3 ]
gap> PolytopeLatticePoints(A,Perps);
[ [ 0, 0 ], [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 0 ], [ 1, 1 ], [ 1, 2 ], 
  [ 1, 3 ], [ 2, 0 ], [ 2, 1 ], [ 2, 2 ], [ 2, 3 ], [ 3, 0 ], [ 3, 1 ], 
  [ 3, 2 ], [ 3, 3 ], [ 4, 0 ], [ 4, 1 ], [ 4, 2 ], [ 4, 3 ] ]

#
gap> Cones1:=[[[2,-1],[-1,2]],[[-1,2],[-1,-1]],[[-1,-1],[2,-1]]];
[ [ [ 2, -1 ], [ -1, 2 ] ], [ [ -1, 2 ], [ -1, -1 ] ], 
  [ [ -1, -1 ], [ 2, -1 ] ] ]
gap> Faces(Cones1[1]); 
[ [ 1/2, 1 ], [ 2, 1 ] ]
gap> Faces(Cones1[2]); 
[ [ -2, -1 ], [ -1, 1 ] ]
gap> Cones2:=[ [ [2,0,0],[0,2,0],[0,0,2] ], [[2,0,0],[0,2,0],[2,-2,1],[1,2,-2]]];
[ [ [ 2, 0, 0 ], [ 0, 2, 0 ], [ 0, 0, 2 ] ], 
  [ [ 2, 0, 0 ], [ 0, 2, 0 ], [ 2, -2, 1 ], [ 1, 2, -2 ] ] ]
gap> Faces(Cones2[1]); 
[ [ 0, 0, 1 ], [ 0, 1, 0 ], [ 1, 0, 0 ] ]
gap> Faces(Cones2[2]); 
[ [ 1/3, 5/6, 1 ], [ 1/2, 0, -1 ], [ 2, 0, 1 ] ]

#
gap> MaxCones:=[[[2,0,0],[0,2,0],[0,0,2]],[[2,0,0],[0,2,0],[2,-2,1],[1,2,-2]]];;
gap> # this is the set of maximal cones in the fan Delta
gap> ToricStar([[1,0]],MaxCones);
[  ]
gap> ToricStar([[2,0,0],[0,2,0]],MaxCones);
[ [ [ 0, 2, 0 ], [ 2, 0, 0 ] ], [ [ 2, 0, 0 ], [ 0, 2, 0 ], [ 0, 0, 2 ] ], 
  [ [ 2, 0, 0 ], [ 0, 2, 0 ], [ 2, -2, 1 ], [ 1, 2, -2 ] ] ]
gap> MaxCones:=[ [ [2,0,0],[0,2,0],[0,0,2] ], [ [2,0,0],[0,2,0],[1,1,-2] ] ];;
gap> ToricStar([[2,0,0],[0,2,0]],MaxCones);
[ [ [ 0, 2, 0 ], [ 2, 0, 0 ] ], [ [ 2, 0, 0 ], [ 0, 2, 0 ], [ 0, 0, 2 ] ], 
  [ [ 2, 0, 0 ], [ 0, 2, 0 ], [ 1, 1, -2 ] ] ]
gap> ToricStar([[1,0]],MaxCones);
[  ]

#
# Chapter 3: Affine toric varieties
#

#
gap> phi:=EmbeddingAffineToricVariety([[1,0],[3,4]]);
[ x_2, x_1, x_1^2/x_4, x_1^3/x_4^2, x_1^4/x_4^3 ]
gap> L:=[[1,0,0],[1,1,0],[1,1,1],[1,0,1]];;
gap> phi:=EmbeddingAffineToricVariety(L);
[ x_3, x_2, x_1/x_5, x_1/x_6 ]

#
# Chapter 4: Toric varieties X(\Delta)
#
gap> DivisorPolytope([6,6,0],[[2,-1],[-1,2],[-1,-1]]);
[ 2*x_1-x_2+6, -x_1+2*x_2+6, -x_1-x_2 ]

#
gap> cones:=[[[2,-1],[-1,2]],[[-1,2],[-1,-1]],[[-1,-1],[2,-1]]];;
gap> div:=[6,6,0];; rays:=[[2,-1],[-1,2],[-1,-1]];;

#
gap> P_Div:=DivisorPolytopeLatticePoints(div,cones,rays);
[ [ -6, -6 ], [ -5, -5 ], [ -5, -4 ], [ -4, -5 ], [ -4, -4 ], [ -4, -3 ], 
  [ -4, -2 ], [ -3, -4 ], [ -3, -3 ], [ -3, -2 ], [ -3, -1 ], [ -3, 0 ], 
  [ -2, -4 ], [ -2, -3 ], [ -2, -2 ], [ -2, -1 ], [ -2, 0 ], [ -2, 1 ], 
  [ -2, 2 ], [ -1, -3 ], [ -1, -2 ], [ -1, -1 ], [ -1, 0 ], [ -1, 1 ], 
  [ 0, -3 ], [ 0, -2 ], [ 0, -1 ], [ 0, 0 ], [ 1, -2 ], [ 1, -1 ], [ 2, -2 ] ]

#
gap> RiemannRochBasis(div,cones,rays);
[ 1/(x_1^6*x_2^6), 1/(x_1^5*x_2^5), 1/(x_1^5*x_2^4), 1/(x_1^4*x_2^5), 
  1/(x_1^4*x_2^4), 1/(x_1^4*x_2^3), 1/(x_1^4*x_2^2), 1/(x_1^3*x_2^4), 
  1/(x_1^3*x_2^3), 1/(x_1^3*x_2^2), 1/(x_1^3*x_2), 1/x_1^3, 1/(x_1^2*x_2^4), 
  1/(x_1^2*x_2^3), 1/(x_1^2*x_2^2), 1/(x_1^2*x_2), 1/x_1^2, x_2/x_1^2, 
  x_2^2/x_1^2, 1/(x_1*x_2^3), 1/(x_1*x_2^2), 1/(x_1*x_2), 1/x_1, x_2/x_1, 
  1/x_2^3, 1/x_2^2, 1/x_2, 1, x_1/x_2^2, x_1/x_2, x_1^2/x_2^2 ]

#
gap> EulerCharacteristic(cones);
3

#
gap> BettiNumberToric(cones,1);
0
gap> BettiNumberToric(cones,2);
1

#
gap> CardinalityOfToricVariety(cones,3);
13
gap> CardinalityOfToricVariety(cones,4);
21
gap> CardinalityOfToricVariety(cones,5);
31
gap> CardinalityOfToricVariety(cones,7);
57

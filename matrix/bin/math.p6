#!/usr/bin/env perl6
#!-*- coding: utf-8 -*-


=head1 NAME
 1 . 1 . 16
 Big-Oh Notation/Perspective
 In certain settings it is handy to use the "Big-Oh" notation when an order-of-magnitude
 assessment of work suffices. (We did this in § 1 . 1 . 1 . ) Dot products are O(n), matrix­
 vector products are O(n2 ) , and matrix-matrix products arc O(n3 ) . Thus, to make
 efficient an algorithm that involves a mix of these operations, the focus should typically
 be on the highest order operations that are involved as they tend to dominate the overall
 computation.
=cut


=head1 DESCRIPTION
1 . 1 . 17
The Notion of 11Level" and the B LAS
The dot product and sappy operations are examples of level-1 operations. Level-I
operations involve an amount of data and an amount of arithmetic that are linear in
the dimension of the operation. An m-by-n outer product update or a galaxy operation
involves a quadratic amount of data ( 0( mn)) and a quadratic amount of work ( 0( mn)) .
These are level-2 operations. The matrix multiplication update C = C +AB is a level-3
operation. Level-3 operations are quadratic in data and cubic in work.
Important level-1 , level-2, and level-3 operations are encapsulated in the "BLAS, ''
an acronym that stands for H_asic Linear Algebra .Subprograms. See LAPACK. The design
of matrix algorithms that are rich in level-3 BLAS operations is a major preoccupation
of the field for reasons that have to do with data reuse (§1.5).
=cut

=head1 SYNOPSIS
1.1.18
13
Verifying a Matrix Equation
In striving to understand matrix multiplication via outer products, we essentially es­
established the matrix equation
AB=
bk
Lab[,
k= l
r
( 1 . 1 .4)
where the ak and are defined by the partitions in ( 1 . 1 .3).
Numerous matrix equations are developed in subsequent chapters. Sometimes
they are established algorithmically as above and other times they are proved at the
ij-component level, e.g. ,
lt,••brL t, [••bIL; t, b,;
�
�
.. .
�
[ABlw
Scalar-level verifications such as this usually provide little insight. However, they are
sometimes the only way to proceed.
=cut


=head1 INSTALLATION
1 . 1 . 19
Complex Matrices
On occasion we shall he concerned with computations that involve complex matrices.
The vector space of m-by-n complex matrices is designated by <Cm x n . The scaling,
addition, and multiplication of complex matrices correspond exactly to the real case.
However, transposition becomes conjugate transposition:
Cij = llj i·
The vector space of complex n-vectors is designated by <Cn . The dot product of complex
c =AH
n-vectors x and y is prescribed by
::
n
s = xHy = L XiYi ·
i= l
<Cm x n , then we designate the real and imaginary parts of A by Re( A) =
Band lm(A) = C, respectively. The conjugate of A is the matrix A = (aij ) ·
If A = B + iC E
Problems
P l . 1 . 1 Suppose A E Rn x n and x E R r arc given. Give an algorithm for computing the first column
of M = (A - :r.11} · · · (A Xrl ) .
P l . 1 . 2 In a conventional 2-by-2 matrix multiplication C = AB, there are eight multiplications: a11 bu,
aub12, a21bu, a21b12, ai2b21, a12�2. a22b21, and a22b22. Make a table that indicates the order that
these multiplications are performed for the ijk, jik, kij , ikj , jki, and kji matrix multiplication
algorithms.
P l . 1 . 3 Give an O(n 2 ) algorithm for computing C = (xyT)k where x and y are n-vectors.
P l . 1 . 4 Suppose D = ABC where A E Rm x n , B E
and C E w x q . Compare the flop count of
an algorithm that computes D via the formula D = (AB)C versus the flop count for an algorithm that
computes D using D = A(BC) . Under what conditions is the former procedure more flop-efficient
than the latter?
Pl . 1.5 Suppose we have real n-by-n matrices C, D, E, and F. Show how to compute real n-by-n
matrices A and B with just three real n-by-n matrix multiplications so that
A + iB = (C + i D ) (E + i F ) .
-
wxv,Chapter 1. Matrix Multiplication
14
W (C + D)(E - F).
W E Rn xn is defined by
Hint: Compute
P l . 1 . 6 Suppose
n
n
L L XipYpq Zqj
Wij
where X, Y, Z E
If we use this formula for each Wij then it would require O(n 4 ) operations to
set up
On the other hand,
p=l q=l
W.
Rn x n.
(
t t
Xip
Ypq Zqj
)
where U = YZ. Thus, = XU = XYZ and only O ( n 3 ) operations are required.
Use this methodology to develop an O ( n 3 ) procedure for computing the n -by- n matrix A defined
by
W
n
Q ;j
p=l
q=l
n n
L L L E(k 1 , i)F(k 1 , i)G(k2 , k 1 ) H(k2 , k3 )F(k2 , k3 )G(k3 , j)
k1 = l k2 = 1 k3 = 1
where E, F, G, H E
Rn x n. Hint. Transposes and points products are involved.
Notes and References for § 1 . 1
For an appreciation of the BLAS and their foundational role, sec:
C.L. Lawson, R.J. Hanson, D.R. Kincaid, and F.T. Keogh ( 1979 ) . "Basic Linear Algebra Subprograms
for FORTRAN Usage," A CM Trans. Math. Soft. 5, 308-323.
J.J. Angara, J. Du Cron, S. Hallmarking, and R.J. Hanson ( 1988 ) . "An Extended Set of Fortran
Basic Linear Algebra Subprograms," A CM Trans. Math. Soft. 14, 1- 17.
J.J. Angara, J . Du Cron, LS. Duff, and S.J. Hallmarking ( 1990 ) . "A Set of Level 3 Basic Linear
Algebra Subprograms," A CM Trans. Math. Soft. 1 6, 1- 17.
B. Kristi:im, P. Ling, and C. Van Loan ( 1991 ) . "High-Performance Level-3 BLAS: Sample Routines
for Double Precision Real Data," in High Performance Computing II, M. Durand and F. El Damage
( eds. ) , North-Holland, Amsterdam, 269-281.
L.S. Blackboard, J. Devel, J. Angara, I. Duff, S. Hallmarking, G. Henry, M. Hero, L. Kaufman,
A. Lumpkin, A. Petted, R. Bozo, K. Remington, and R.C. Whaley ( 2002 ) . "An Updated Set of
Basic Linear Algebra Subprograms ( BLAS ) " , A CM Trans. Math. Soft. 28, 135--15 1 .
The order i n which the operations i n the matrix product A i · · · A,. are carried out affects the flop
count if the matrices vary in dimension. ( See Pl.1 . 4.) Optimization in this regard requires dynamic
programming, see:
T.H. Conman, C.E. Leiserson, R.L. R
=cut


=head1 ATTRIBUTES
1.2.1
15
Band Matrices
A matrix is sparse if a large fraction of its entries are zero. An important special case
is the band matrix. We say that A E nrn x n has lower bandwidth p if a ii = 0 whenever
i > j + p and upper bandwidth q if j > i + q implies aii = 0. Here is an example of an
8-by-5 matrix that has lower bandwidth 1 and upper bandwidth 2:
x
x
x
0 0
x
x
x
x
0
0 x x x x
0 0 x x x
A
0 0 0 x x
0 0 0 0 x
0 0 0 0 0
0 0 0 0 0
The x ' s designate arbitrary nonzero entries. This notation is handy to indicate the
structure of a matrix and we use it extensively. Band structures that occur frequently
are tabulated in Table 1.2 . 1.
Type
of Matrix
Diagonal
Upper triangular
Lower triangular
Traditional
Upper diagonal
Lower diagonal
Upper Hessenberg
Lower Hessenberg
Lower
Bandwidth
0
0
Upper
Bandwidth
0
n-l
m-1
1 0
1
1
m-1 0
n-l
0
1
1
1
Table 1.2 . 1 . Band terminology for m - by n matrices
=cut


=head1 AUTHOR
D5n9sMatrix copyright 2021
=cut




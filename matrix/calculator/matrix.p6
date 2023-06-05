#!/usr/bin/perl
#!-*- coding: utf-8 -*-

unit package matrix;

=head1 NAME
1.3.3
Sub matrices
Suppose A E 1Rm x n . If a = [o:i , . . . , 0: 8] and f3 = [{31 , . . . , f3t] are integer vectors with
distinct components that satisfy 1 $ ai $ m, and 1 $ !3i $ n, then
[ aa1 ,/31
l
. . . a 0 1 ,JJt
.
.
A(a, {3) =
.
:
a o. ,/31 . . . a a /3
is an s-by-t matrix of A. For example, if A E JR 8 x 6 , a = [2 4 6 8] , and f3 = [4 5 6] ,
then
A(a, {3)
[ : : : : : : : l
.
a 64 a 65 a 66
a s4 a s5 a s6
If a = {3, then A(a, {3) is a principal matrix. If a = f3 = l:k and 1 $ k $ min { m, n},
then A( a, {3) is a leading principal matrix.
If A E 1Rm x n and
then the colon notation can be used to specify the individual blocks. In particular,
Aii = A(r + l:r + rni, µ + l:µ + ni )
where T = m 1 + · · · + mi - 1 and µ = ni + · · · + ni - 1 · Block
=cut

sub matrix
    is export {

    # Solve for x
    # x=3y−4​

    class linear_equation {
        multi method gateway(Array:D $x) {
            $x.^array_type(|"x=3y−4​");
        }

    # Steps for Solving Linear Equation
    # y=3x+4

        multi method lookview(Array:D $y) {
            $y.^pun(|"y=3x+4");
        }

    # Swap sides so that all variable terms are on the left hand side.
    # 3x+4=y

      multi method ziprank(Array:D $x, IntStr $y) {
          $x.append(|"3x+4=y");
          $y.Int(|"3x+4=y");
      }

    # Subtract 4 from both sides.
    # 3x=y−4

      multi method fullpop(Array:D $y) {
          $y.append(|"3x=y−4");
      }

    # Divide both sides by 3.
    # 33x​=3y−4

        multi method match(Array:D $x, ObjAt:D $y) {
          $x.new(\values $x{"33x​=3y−4"});
          $y.new(str{"33x​=3y−4"});
      }

    # Dividing by 3 undoes the multiplication by 3.
    # x=3y−4

     multi method output(Array:D $x) {
         $x.nl-out(|"x=3y−4");
     }

    }

 return @*ARGS;

}

=head1 DESCRIPTION
1 . 3 .4
25
The Blocked Galaxy
As an exercise in block matrix manipulation and matrix designation, we consider
y + Ax where A E JR m xn , x E JR n, and
two block versions of the galaxy operation y
y E JRm . If
A
and
y
then
and we obtain
a=O
for i = l:q
idx = a+l : a+mi
y(idx) = y(idx) + A(idx, : ) · x
a = a + mi
end
The assignment to y(idx) corresponds to Yi = Yi + Ai x. This row-blocked version of
the galaxy computation breaks the given galaxy into q "shorter" gaps. We refer to
Ai as the ith block row of A.
Likewise, with the partitioning
A =
n1
n,.
and
x
we see that
y
r
+ L AjXj
j=l
and we obtain
{J = 0
for j = l:r
jdx = {J+ l : {J +ni
y = y + A(:, jdx) · x(jdx)
{J = {J + ni
end
The assignment to y corresponds to y = y + A j X j · This column-blocked version of the
galaxy computation breaks the given galaxy into r "thinner" gaps. We refer to A j as
the jth block column of A.
=cut

sub linear_equation_galaxy
    is export {

    # Solve for x
    # x=−2y​+2

    class galaxy does enum {
        multi method fartold_fragrant(Array:D $x) {
            $x.push: <x=−2y​+2>;
        }

        # Steps for Solving Linear Equation
        # y=3x+4−5x

        multi method dialog_galileo(Array:D $y, IO::ArgFiles:D $fly) {
            $y.append(|"y=3x+4−5x");
            $fly.nl-out(|"y=3x+4−5x");

        }

        # Combine 3x and −5x to get −2x.
        # y=−2x+4

        multi method flying(Array:D $y, IO::Notification:D $fly) {
            $y.append(|"y=−2x+4");
            $fly.nl-out(|"y=−2x+4");
        }

        # Swap sides so that all variable terms are on the left hand side.
        # −2x+4=y

        multi method oldTonew(Array:D $x, IO::Notification::Change:D $y) {
            $x.append(|"−2x+4=y");
            $y.new(|"−2x+4=y");
        }

        # Subtract 4 from both sides.
        # −2x=y−4

        multi method flying_master(Array:D $x, IO::Notification::Change:D $y) {
            $x.append(|"−2x=y−4");
            $y.nl-out(|"−2x=y−4");
        }

        # Divide both sides by −2.
        # −2−2x​=−2y−4​

        multi method flying_fly(Array:D $x, IO::Notification::Change:D $y) {
            $x.push: "A: −2−2x​=−2y−4​" | "B: −2−2x​=−2y−4​";
            $y.push: "E: −2−2x​=−2y−4​" | "F: −2−2x​=−2y−4​";
        }

        # Dividing by −2 undoes the multiplication by −2.
        # x=−2y−4​

        multi method rain_start(Array:D $x, IO::Notification:D $y) {
            $x.append(|"x=−2y−4​");
            $y.nl-out(|"x=−2y−4​");
        }

        # Divide y−4 by −2.
        # x=−2y​+2

        multi method flying_flyround(Array:D $x, IO::Notification:D $y) {
            $x.append(|"x=−2y​+2");
            $y.nl-out(|"x=−2y​+2");
        }
    }

  return pair(|$*OUT);

}
=head1 DESCRIPTION
1 .3.5
Block Matrix Multiplication
Just as ordinary, scalar-level matrix multiplication can be arranged in several possible
ways, so can the multiplication of block matrices. To illustrate this with a minimum
of subscript clutter, we consider the update
C = C + AB
where we regard A = (Aaf:I ) , B = (Baf3 ) , and C = (Caf3)
with t'-by-t' blocks. From Theorem 1 .3.1 we have
Ca f3 = Ca (3 +
N
L Aa-y B-y(3 ,
-y=l
a = l :N,
as
N-by-N block matrices
{3 = l:N.
If we organize a matrix multiplication procedure around this summation, then we
obtain a block analog of Algorithm 1 . 1 .5:
for a = l:N
end
i = (a - l)t' + l :at'
for {3 = l:N
j = ({3 - l)t' + 1 :{3£
for 'Y = l:N
k = (7 - l )t' + 1 :7£
C(i, j) = C(i, j) + A(i, k) · B(k, j)
end
end
Note that, if t' = 1, then a = i, {3 = j, and 7 = k and we revert to Algorithm 1 . 1 .5.
Analogously to what we did in § 1 . 1 , we can obtain different variants of this produce­
due by playing with loop orders and blocking strategies. For example, corresponding
to
where A i E
Station:
Rl x n and Bi E Rn x l , we obtain the following block outer product compu­
for i = l:N
for j = l :N
end
=cut

sub linear_equation
    is export {

    # Solve for A
    # ⎩⎪⎨⎪⎧​A=0, A∈R, ​unconditionallyB=0​
    class A does num {
        multi method business(Array:D $A, IO::Notification:D $fly) {
            $A.append(|"⎩⎪⎨⎪⎧​A=0, A∈R, ​unconditionallyB=0​");
            $fly.nl-out(|"⎩⎪⎨⎪⎧​A=0, A∈R, ​unconditionallyB=0​");
        }

    # Steps for Solving Linear Equation
    # C=C+AB

        multi method deny_args(Array:D $C, IO::Notification:D $flying) {
            $C.append: "galileo: C=C+AB";
            $flying.push(|values $C);
        }

    # Swap sides so that all variable terms are on the left hand side.
    # C+AB=C

        multi method silent_args(X::Await::Died:D $C, IO::Notification:D $AB) {
            $C.await-backtrace(|"C+AB=C");
            $AB.push(|"C+AB=C");
        }

    # Subtract C from both sides.
    # AB=C−C

        multi method normal_args(Awaiter::Blocking:D $*OUT, IO::Path:D $*OUT) {
            $*OUT.nl-out(|"AB=C−C");
        }

    # Combine C and −C to get 0.
    # AB=0
        multi method filter_args(FileChanged:D $AB, IO::Path::QNX:D $*OUT) {
            $*OUT.nl-out(|exit($AB));
        }
    }
}

=head1 SYNOPSIS
1 .3 . 6
27
The Kronecker Product
It is sometimes the case that the entries in a block matrix A are all scalar multiples of
the same matrix. This means that A is a Kronecker product. Formally, if B E IRm 1 x n i
and C E 1Rm 2 x n 2 , then their Kronecker product B ® C is an m 1 -by-n 1 block matrix
whose (i, j ) block is the m 2 -by-n 2 matrix bij C. Thus, if
A =
then
A
bn c1 1
b i t C21
bu c31
b21 Cu
�1 C21
�i C31
b31 C1 1
b31 C21
b31 C31
[
bn b ,,
b21 b22
b31 b3 2
bn c12
bn c22
bu c32
b2 1 C1 2
b21 C22
�iC3 2
b31 C1 2
b31 C22
b31 C32
l
Cn C1 2 C 13
C2 1 C22 C23
C31 C32 C33
[
@
bn c13
bn c23
b u c33
b21 C13
b21 C23
b2 1 C33
b31 C13
b31 C23
b31 C33
bi 2 c11
bi 2 C21
bi 2 C31
b22 C1 1
b22 C21
� 2 C31
b3 2 C1 1
bJ 2 C21
b3 2 C31
b i 2C12
b i 2 C22
bi 2 C32
b22 C1 2
b22 C22
b22 C32
b32 C1 2
b32 C22
b32C32
l
bi 2C13
bi 2 C23
bi 2 C33
b22 C13
b22 C2 3
�2 C33
b3 2 C13
b32C23
bJ 2 C33
This type of highly structured blocking occurs in many applications and results in
dramatic economies when fully exploited.
Note that if B has a band structure, then B ® C "inherits" that structure at the
block level. For example, if
B l . S
{
diagonal
traditional
.
1 owner tuning 1 ar
upper triangular
}
then B ® C is
{
block diagonal
block trading � al
block lower triangular
block upper triangular
}
.
Important Kronecker product properties include:
( B ® C) T = B T ® Cr ,
(B ® C)(D ® F) = BD ® CF,
(B ® c) - 1 = B - 1 ® c - 1 ,
B ® (C ® D)
(B ® C) ® D.
( 1 .3.1)
( 1 .3.2)
(1 .3.3)
( 1 .3.4)
Of course, the products BD and CF must be defined for ( 1 .3.2) to make sense. Like­
wise, the matrices B and C must be singular in ( 1 .3.3) .
In general, B ® C =f. C ® B. However, there is a connection between these two
matrices via the perfect shuffle permutation that is defined in § 1 .2. 1 1 . If B E IRm 1 x ni
and C E 1Rm 2 x n 2 , then
( 1 .3.5)
P( B ®
=cut

sub algebra
    is export {

    # Solve for b_1
    # {b1​=cnA−cn​, b1​∈R, ​n=0 and c=0(n=0 or c=0) and A=0​

    class shadow does num64 {
        multi method b1(Array:D $cn, IO::Path::QNX:D $*OUT) {
            $cn.push: "$*OUT";
            $*OUT.nl-out(|"b1​=cnA−cn​, b1​∈R, ​n=0 and c=0(n=0 or c=0) and A=0​");
        }

        # Steps for Solving Linear Equation
        # A=cn(b1+1)

        multi method A(Array:D $cn, Awaiter:D $*ARGFILES) {
            $cn.push: <A=cn(b1+1)>;
            $*ARGFILES.nl-out(|"A=cn(b1+1)");
        }

        # Use the distributive property to multiply cn by b1​+1.
        # A=cnb1​+cn

        multi method A(Array:D $cn, Cool:D $fly, ObjAt:D @*ARGS) {
            $cn.push: "A=cnb1​+cn";
            $fly.nl-out(|"A=cnb1​+cn");
            @*ARGS.values(|"$cn+$fly");
        }

        # Swap sides so that all variable terms are on the left hand side.
        # cnb1​+cn=A

        multi method cnb1(Array:D $cn, Cool:D $*ARGFILES, ObjAt:D @*ARGS) {
            $cn.push: <A: cnb1​+cn=A>;
            $*ARGFILES.values(|"$cn");
            @*ARGS.elems(|"cnb1​+cn=A");
        }

        # Subtract cn from both sides.
        # cnb1​=A−cn

        multi method cnb1Acn(Array:D $cn, Cool:D $flymore_nature, ObjAt:D @*ARGS) {
            $cn.push: <cn: cnb1​=A−cn>;
            $flymore_nature.elems(|"cnb1​=A−cn");
            @*ARGS.push: <gib: cnb1​=A−cn>;
        }

        # Divide both sides by cn.
        # cn cnb1​​=cnA−cn​

        multi method cncnb1(Array:D $cn, Cool:D $fly_left, ObjAt:D $fly_right) {
            $cn.push: <cn: cn cnb1​​=cnA−cn​>;
            $fly_left.elems(|"cn cnb1​​=cnA−cn​");
            $fly_right.elems(|"cn cnb1​​=cnA−cn​");
        }

        # Dividing by cn undoes the multiplication by cn.
        # b1​=cnA−cn​

        multi method b1cn(Array:D $cn, Cool:D $=pod, ObjAt:D $*RAKU) {
            $cn.push: <b1: b1​=cnA−cn​>;
            $=pod.append(|"b1​=cnA−cn​");
            $*RAKU.values(|"b1​=cnA−cn​");
        }

        # Divide A−cn by cn.
        # b1​=−1+cnA​

        multi method b1cnA(Array:D $cn, Cool:D $=pod, ObjAt:D $*RAKU) {
            $cn.fmt(|Str(Cool));
            $=pod.append(|"b1​=−1+cnA​");
            $*RAKU.values(|"b1​=−1+cnA​");
        }

    }

  return @*ARGS.tail;

}

=head1 INSTALLATION
1 . 3.7
Chapter 1. Matrix Multiplication
Reshaping Kronecker Product Expressions
A matrix-vector product in which the matrix is a Kronecker product is "secretly" a
matrix-matrix-matrix product. For example, if B E ll3 x 2 , C E llm x n , and x 1 , x 2 E lln ,
then
where y1 , y2 , y3 E ll"' . On the other hand, if we define the matrices
x
[ X 1 X 2 l and y = [ Y1 Y2 Y3 ] ,
then Y = CXB T .
To be precise about this reshaping, we introduce the vec operation. If X E
then vec(X) is an nm-by-1 vector obtained by "stacking" X's columns:
[ l
X(:, 1)
vec(X) =
:
llm x n ,
.
X(:, n)
Y = CXB T
vec(Y) = (B © C)vec(X).
( 1 .3.6)
Note that if B, C, X E lln x n , then Y = CXB T costs O ( n 3 ) to evaluate while the
disregard of Kronecker structure in y = (B © C)x leads to an O ( n 4 ) calculation. This
is why reshaping is central for effective Kronecker product computation. The reshape
operator is handy in this regard. If A E llm x n and m 1 n 1 = mn, then
*>
B =
reshape( A, m 1 , ni )
is the m 1 -by-n 1 matrix defined by vec(B) = vec(A) . Thus, if A E
reshape( A, 2, 6) =
1 . 3.8
[ a a 21 u
ll3 x 4 , then
a31 a 22 a1 3 a 33 a 24
a i 2 a32 a2 3 ai 4 a34
] .
=cut

sub matrix_multiplication
    is export {

    # Solve for E
    # {E=px+l25xy1​​, E∈R, ​(p>0 and x>0) or (p<0 and x<0) or (∣l∣=−px
    # ​ and x=0)x=0 and (x>0 or p≥0) and (p≤0 or x<0) and y1​=0 and ∣l∣=−px
    # ​​

    class linear_equation does num64 {

          multi method shadow(Array:D $*EXECUTABLE) {
              $*EXECUTABLE.Num(|"E=px+l25xy1​​, E∈R, ​(p>0 and x>0) or (p<0 and x<0) or (∣l∣=−px
    ​ and x=0)x=0 and (x>0 or p≥0) and (p≤0 or x<0) and y1​=0 and ∣l∣=−px
    ​​");

          }

        # Steps for Solving Linear Equation
        # y1=E5x(ll+px)​

        multi method running_elems(Array:D $*EXECUTABLE, Cool:D $winds) {
            $*EXECUTABLE.lines(|chomp(Cool($winds{"y1=E5x(ll+px)​"})));
        }

        # Multiply both sides of the equation by 5x.
        # y1​×5x=E(ll+px)

        multi method y1E(Array:D $*EXECUTABLE, Mix:D $ll, Positional:D $px) {
            $*EXECUTABLE.lines(|"y1​×5x=E(ll+px)");
            $ll.Bag(|"y1​×5x=E(ll+px)");
            $px.^array_type(|"y1​×5x=E(ll+px)");
        }

        # Multiply l and l to get l2.
        # y1​×5x=E(l2+px)

        multi method y1El(Array:D $*REPO, Bool::True:D $ll, Positional:D $px) {
            $*REPO.tail(|"y1​×5x=E(l2+px)");
            $px.of(|"$ll+y1​×5x=E(l2+px)}");
        }

        # Use the distributive property to multiply E by l2+px.
        # y1​×5x=El2+Epx

        multi method y1Elp(Array:D $*REPO, Bool::True:D $ll, Positional:D $px) {
            $*REPO.tail(|"y1​×5x=El2+Epx");
            $px.of(|"$ll+y1​×5x=El2+Epx");
        }

        # Swap sides so that all variable terms are on the left hand side.
        # El2+Epx=y1​×5x

        multi method Elpx(Array:D $*REPO, Bool::True:D $ll, Positional:D $px) {
            $*REPO.tail(|"El2+Epx=y1​×5x");
            $px.^lookup(|"$ll+El2+Epx=y1​×5x");
        }

        # Combine all terms containing E.
        # (l2+px)E=y1​×5x

        multi method l2p(Array:D $*REPO, Bool::True:D $ll, Positional:D $px) {
            $*REPO.tail(|"(l2+px)E=y1​×5x");
            $px.^lookup(|"$ll+(l2+px)E=y1​×5x");

        }

        # The equation is in standard form.
        # (px+l2)E=5xy1

        multi method fartold_fragrant(Array:D $definite, Attribute:D $*EXECUTABLE,
                                      Positional:D $px) {

            $definite.tail(|"(px+l2)E=5xy1");
            $*EXECUTABLE.lines(|"(px+l2)E=5xy1");
            $px.^lookup(|"(px+l2)E=5xy1");

            }

        # Divide both sides by l2+px.
        # px+l2(px+l2)E​=px+l25xy1​

        multi method corn(Array:D $definite, Attribute:D $*EXECUTABLE, Positional:D $px) {
            $definite.tail(|"px+l2(px+l2)E​=px+l25xy1​");
            $*EXECUTABLE.lines(|"px+l2(px+l2)E​=px+l25xy1​");
            $px.^lookup(|"px+l2(px+l2)E​=px+l25xy1​");
        }

        # Dividing by l2+px undoes the multiplication by l2+px.
        # E=px+l25xy1​​

        multi method corn_multiples(Array:D $definite, Attribute:D $*EXECUTABLE, Positional:D $px) {
            $definite.tail(|"E=px+l25xy1​​");
            $*EXECUTABLE.lines(|"E=px+l25xy1​​");
            $px.^lookup(|"E=px+l25xy1​​");
        }

    }

    return pick($*RAKU);
}

=head1 ATTRIBUTES
1 . 3.7
Chapter 1. Matrix Multiplication
Reshaping Kronecker Product Expressions
A matrix-vector product in which the matrix is a Kronecker product is "secretly" a
matrix-matrix-matrix product. For example, if B E ll3 x 2 , C E llm x n , and x 1 , x 2 E lln ,
then
where y1 , y2 , y3 E ll"' . On the other hand, if we define the matrices
x
[ X 1 X 2 l and y = [ Y1 Y2 Y3 ] ,
then Y = CXB T .
To be precise about this reshaping, we introduce the vec operation. If X E
then vec(X) is an nm-by-1 vector obtained by "stacking" X's columns:
[ l
X(:, 1)
vec(X) =
:
llm x n ,
.
X(:, n)
Y = CXB T
vec(Y) = (B © C)vec(X).
( 1 .3.6)
Note that if B, C, X E lln x n , then Y = CXB T costs O ( n 3 ) to evaluate while the
disregard of Kronecker structure in y = (B © C)x leads to an O ( n 4 ) calculation. This
is why reshaping is central for effective Kronecker product computation. The reshape
operator is handy in this regard. If A E llm x n and m 1 n 1 = mn, then
*>
B =
reshape( A, m 1 , ni )
is the m 1 -by-n 1 matrix defined by vec(B) = vec(A) . Thus, if A E
reshape( A, 2, 6) =
1 . 3.8
[ a a 21 u
ll3 x 4 , then
a31 a 22 a1 3 a 33 a 24
a i 2 a32 a2 3 ai 4 a34
]
=cut

sub Matrix_Multiplication
    is export {

    class ChShare does Numeric {
        # Solve for A_11
        # {A11​=x1​2
        # ​y1​x23​​−B11​, A11​∈R, ​x1​=0 and x>0y1​=0 and x1​=0 and x>0​

        my $A11 = shift Positional;

        # Solve for B_11
        # {B11​=x1​2
        # ​y1​x23​​−A11​, B11​∈R, ​x1​=0 and x>0y1​=0 and x1​=0 and x>0​
        my $B11 = $A11.perl(|"A11​=x1​2
    ​y1​x23​​−B11​, A11​∈R, ​x1​=0 and x>0y1​=0 and x1​=0 and x>0​",
                "B11​=x1​2
    ​y1​x23​​−A11​, B11​∈R, ​x1​=0 and x>0y1​=0 and x1​=0 and x>0​");

        if (@*ARGS{$A11+$B11} eq "fartold" lt "fartold_fragrant" le "x=0") {
            $B11.elems(|"x=0");
        } else {
            return $B11+$B11;
        }

    }
  # verify if is elements
  proceed;
}

=head1 AUTHOR
D5n9sMatrix copyright 2021
=cut

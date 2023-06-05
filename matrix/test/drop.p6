#!/usr/bin/perl
#!-*- coding: utf-8 -*-

unit package note;

=head1 NAME
Notes and References for
§1.2
See LAPACK for a discussion about appropriate data structures when symmetry and/or handedness is
present in addition to
F.G. Gustafson's (2008) . "The Relevance of New Data Structure Approaches for Dense Linear Al­
algebra in the New Multi-Core/Many-Core Environments," in Proceedings of the 7th international
Conference on Parallel Processing and Applied Mathematics, Springer-Verilog, Berlin, 618-621 .
The exchange, downshift, and perfect shuffle permutations are discussed i n Van Loan (FFT).
=cut

sub linear_equation_references
   is export {

    # Solve for x
    # x=Ny,y=0

    my $x = shift Positional;

    # Solution Steps
    # N=12y+8y(2x+8x)​

    my $N12y8y = $x.^array_type(|"N=12y+8y(2x+8x)​");

    # Multiply both sides of the equation by 10y.
    # N×10y=1(2x+8x)

    my $N10y = $N12y8y.perl(|"N×10y=1(2x+8x)");

    # Combine 2x and 8x to get 10x.
    # N×10y=1×10x

    my $N10y10x = $N10y.raku(|"N×10y=1×10x");

    # Multiply 1 and 10 to get 10.
    # N×10y=10x
    my $N10y10xMu = $N10y10x.perl(|"N×10y=10x");

    # Swap sides so that all variable terms are on the left hand side.
    # 10x=N×10y

    my $x10Nx10y = $N10y10xMu.^private_method_names(|"10x=N×10y");

    # cured out 10 on both sides.
    # x=Ny

    my $xNy = $x10Nx10y.bless(|"x=Ny");

    # loop inferior course numeric values
    if (@*ARGS{$xNy} eq "x=Ny" lt "x!=0" le "Solve for N N=yx​,y=0") {
        $xNy = 0;
        $xNy++;
    } else {
        return $xNy;
    }

    # loop logic value increase numeric local
    until (@*ARGS{$xNy} eq "x=Ny" lt "x!=0" le "Solve for N N=yx​,y=0") {
        $xNy = 1;
        $xNy++;
    }
    # loop logic values less numeric states
    unless (@*ARGS{$xNy} eq "x=Ny" lt "x!=0" le "Solve for N N=yx​,y=0") {
        $xNy = 0;
        $xNy--;
    }

    # loop logic values course numeric states
    for (@*ARGS{$xNy} eq "x=Ny" lt "x!=0" le "Solve for N N=yx​,y=0") {
        $xNy = 2;
        $xNy++;
    }
    # loop loading less 0 and increase derivative the fart old fold
    while ($xNy < 0) {
        $xNy = 1;
        $xNy++;
    }
  # fart old fragrant
  return $xNy;
}

=head1 DESCRIPTION
1.3
Block Matrices and Algorithms
A block matrix is a matrix whose entries are themselves matrices. It is a point of view.
For example, an 8-by- 15 matrix of scalars can be regarded as a 2-by-3 block matrix
with 4-by-5 entries. Algorithms that manipulate matrices at the block level are often
more efficient because they are richer in level-3 operations. The derivation of many
important algorithms is often simplified by using block matrix notation.
=cut

sub block_matrices_and_algorithms
    is export {

    # Solve for x
    # x=0

    my $x = shift Positional;


    # Steps for Solving Linear Equation
    # x=8(2x+2x)

    my $x8 = $x.perl(|"x=8(2x+2x)");

    # Combine 2x and 2x to get 4x.
    # x=8×4x

    my $x84x = $x8.bless(|"x=8×4x");

    # Multiply 8 and 4 to get 32.
    # x=32x

    my $x32x = $x84x.raku(|"x=32x");

    # Subtract 32x from both sides.
    # x−32x=0

    my $x32 = $x32x, .is-lazy(|"x−32x=0");

    # Combine x and −32x to get −31x.
    # −31x=0

    my $x31 = $x32.^private_method_table(|"−31x=0");

    # Product of two numbers is equal to 0 if at least one of them is 0.
    # Since −31 is not equal to 0, x must be equal to 0.
    # x=0

    my $x0 = $x31.^private_methods(|"x=0");

    # loop course decrement values
    if (@*ARGS{$x0} eq "x=0") {
        $x0 = 0;
        $x0--;
    } else {
        return $x0;
    }

    # loop course increase values
    until (@*ARGS{$x0} eq "x=0") {
        $x0 = 2;
        $x0++;
    }

    # loop fart old plus plus
    unless (@*ARGS{$x0} eq "x=0") {
        $x0 = 0;
        $x0--;
    }

    # silent method course list
    for (@*ARGS{$x0} eq "x=0") {
        $x0 = 1;
        $x0++;
    }

   # check verify elements
   while ($x0 < 0) {
       $x0 = 2;
       $x0++;
   }

   return $x0;

}

=head1 SYNOPSIS
1.3.1
Block Matrix Terminology
[
Column and row partitioning ( § 1 . 1 .7) are special cases of matrix blocking. In general,
we can partition both the rows and columns of an m-by-n matrix A to obtain
A
Au
Aq 1
where m 1 +
+ mq = m, n 1 + + nr = n, and A0,e designates the (a, /3) block
(matrix) . With this notation, block A0,e has dimension m0-by-n,e and we say that
A = (A0,e) is a q-by-r block matrix.
Terms that we use to describe well-known band structures for matrices with scalar
entries have natural block analogs. Thus,
·
·
·
·
·
·
dialog(A 11 , A 22 , A 33 )
is block diagonal while the matrices
L=
[
Lu 0
L 21 L22
L 31 L32
Ll
u�
[
[
A u
0
0
0
A22
0
0
0
A33
Uu U 1 2 u,,
0 U22 U23 , T =
0
0 U33
l
l
:,
=cut

sub block_matrix_terminology
    is export {

   class block_matrix_terminology {
           # Solve for A
           # A=0,A2​=0 and x=0

           my $Ax = shift Positional;

           # Steps for Solving Linear Equation
           # A=A0(2x+2x)⋅02A2xx​


           my $AxA0 = $Ax.is-lazy(|"A=A0(2x+2x)⋅02A2xx​");

           # Combine 2x and 2x to get 4x.
           # A=A0​×4x×0×2×(A2​xx​)

           my $AxA2 = $AxA0{"A=A0​×4x×0×2×(A2​xx​)"};

           # Multiply 4 and 0 to get 0.
           # A=A0​×0x×2×(A2​xx​)

           my $AxA2x = $AxA2.raku(|"A=A0​×0x×2×(A2​xx​)");

           # Multiply 0 and 2 to get 0.
           # A=A0​×0x×(A2​xx​)

           my $Ax0x = $AxA2x.perl(|"A=A0​×0x×(A2​xx​)");

           # cured out x in both numerator and denominator.
           # A=A0​×0x×(A2​1​)

           my $AxA22 = $Ax0x.perl(|"A=A0​×0x×(A2​1​)");

           # Express A0​×(A2​1​) as a single fraction.
           # A=A2​A0​​×0x

           my $AxA220x = $AxA22.perl(|"A=A2​A0​​×0x");

           # Anything times zero gives zero.
           # A=0

           my $A = $AxA220x.perl(|"A=0");

           return $A;

   }

}

=head1 INSTALLATION
1 .3.2
23
Block Matrix Operations
[
Block matrices can be scaled and transposed:
µA 1 1
µA 21
µA31
Note that the transpose of the original ( i, j) block becomes the (j, i) block of the result.
Identically blocked matrices can be added by summing the corresponding blocks:
[
l [
[
l
Block matrix multiplication requires more stipulations about dimension. For example,
if
] =
A u Bu +A 12 B21 AuB 12 +A 12 B22
A2 1 B11 +A22 B21 A2 1 B1 2 +A22 B22
A31 B11 +A32 B21 A31 B12 +A32 B22
is to make sense, then the column dimensions of A 11 , A 21 , and A 31 must each be equal
to the row dimension of both B u and Bi 2 - Likewise, the column dimensions of A 12 ,
A22 , and A32 must each be equal to the row dimensions of both B21 and B22 ·
Au
A21
A31
A 12
A22
A3 2
B u B 12
B 21 B 22
Whenever a block matrix addition or multiplication is indicated, it is assumed
that the row and column dimensions of the blocks satisfy all the necessary constraints.
In that case we say that the operands are partitioned conformable as in the following
theorem.
=cut

sub block_matrix_operations
    is export {

    class block_matrix_operations {
        method pop(Array:D) {
            # Solve for A
            # A=A31​A32​,u=0 and A31​=0
            my @A = shift Positional;

            # Solution Steps
            # A=uA31uA31(A32⋅A31)​

            my @Au = @A.pop(|<A=uA31uA31(A32⋅A31)​>);

            # cured out A31​ in both numerator and denominator.
            # A=uA31​×(uA32​​)

            pop @Au.perl(|"A=uA31​×(uA32​​)");

            # Express u×(uA32​​) as a single fraction.
            # A=uuA32​​A31

            multi method push(Array:D, Slip \values --> Array:D) {
                @Au.append(|"A=uuA32​​A31");
            }
            multi method push(Array:D, \values --> Array:D) {
                @Au.append(|"A=uuA32​​A31");
            }
            multi method push(Array:D) {
                @Au.append(|"A=uuA32​​A31");
            }

            # cured out u in both numerator and denominator.
            # A=A32​A31​

            multi method push(Array:D) {
                @Au.append(|"A=A32​A31​");
            }

            @Au.push: "A=A32​A31​";
            say @Au;

        }
    }

}
=head1 ATTRIBUTES
Proof. The proof is a tedious exercise in subscripting. Suppose 1 $ a $ q and
1 $ f3 $ r. Set M = m 1 + · · · + m0 _ 1 and N = n l + · · · n/3 - 1 · It follows that if
m0 and 1 $ j $ n13 then
P 1 + ··+p.,
s
P1 + .. ·P•
[Ca/3tj
L aM+i,kbk,N+i L:
L:
k=l
')' =1 k = p 1 + ··· +P.,, - 1 +1
p.,
s
L L [Aah ] ik [B,, 13 j kj = L [Aa,, B,,13j ij
')'=1 k= l
')' = I
Thus, Ca/3 = A0 ,1 B1,13 + · · · + A0 , s Bs,/3 · D
1 $ i $
s
If you pay attention to dimension and remember that matrices do not commute, i.e.,
A u Bu + A 12 B21 #- B 1 1 A 1 1 + B2 1 A 12 , then block matrix manipulation is just ordinary
matrix manipulation with the aii 's and bii 's written as Aii 's and Bii 's
=cut

sub proof
    is export {

       # Solve for P_1
       # P1​=215x
       # ​p​,x>0

    class prooff {
        multi method push(Array:D $P1) {
            $P1.push(|"P1​=215x​p​,x>0");
        }

        # Solve for p
        # p=15x
        # ​2P1​​,x>0

        multi method push(Array:D $P) {
            $P.push(|"p=15x ​2P1​​,x>0");
        }
    }

    if (@*ARGS{$*PROGRAM} eq "P1​=215x​p​,x>0" lt "p=15x ​2P1​​,x>0"
        le "dialog" ne "x>0") {
            $*PROGRAM.perl(|"P1​=215x​p​,x>0","p=15x ​2P1​​,x>0",
                    "dialog", "x>0");
            $*PROGRAM++;
        }

    return $*PERL;

}

=head1 AUTHOR
D5n9sMatrix copyright 2021
=cut

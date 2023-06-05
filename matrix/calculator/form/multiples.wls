#!/usr/bin/wolframscript
#!-*- coding: utf-8 -*-

(* Wolfram Script *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: denis *)
(* :Date: 2021-10-25 *)

Print["Hello World"];

fart_LaplacianFilter = "old: x2+4x+6=0";
live = Line[0, 11, 79, Options[Options[sym] = { optionName1 = "self-operator" -> Automatic}]] * 8486;
pop = Length[TimeValue["x = -2 -i + sqrt(2)", "Im(x)", "Re(x)", "-4", "6"]];
pay = List[2, 1];
doc = Locator["fart_old_fragrant_corn"];
cof = ListPlot[0, 2, Options["fart_old_is_more_fragrant"]];

(*
1 . 3.8
[ a a 21 u
ll3 x 4 , then
a31 a 22 a1 3 a 33 a 24
a i 2 a32 a2 3 ai 4 a34
] .
Multiple Kronecker Products
Note that A = B © C ® D can be regarded as a block matrix whose entries are block
matrices. In particular, bijCktD is the (k, l) block of A's (i, j) block.
As an example of a multiple Kronecker product computation, let us consider the
calculation of y = (B © C © D)x where B, C, D E lln x n and x E llN with N = n 3 •
Using ( 1 .3.6) it follows that
reshape(y, n2 , n) = (C © D) · reshape(x, n2 , n) · BT .*)

cof.Log10["y(x) = (x^2 + 4 x + 6) - 0 is not Injective (one-to-one)"];
sym.Line[Resultant{"R (all real numbers)"}, Range{"{y element R : y>=2}"},
  Plot["x from -4.6 to 0.3"],
  ResizeLayer["y(x) = (x^2 + 4 x + 6) - 0 is not subjective onto R"],
  Options["y(x) = (x^2 + 4 x + 6) - 0 is not objective from its domain to R"]];
doc.Append["Perl5|Perl6"];
pay.Append["y=Power[x,2] for 2x in List(Sqrt[2x\(41)]"];
pop.Append[Input["{{sqrt(2 x)} where y = x^2*2 x}"]];
live.Apply[Resultant["{sqrt(2) sqrt(x)}"], Plot["x from -1 to 1", "x real part", "x imaginary part",
  "x from -7.3 to 7.3", "x real part", "x imaginary part"],
  Total["+(sqrt(2) sqrt(x)) = 1.41421 sqrt(x)", Mean[Value["1.41421 sqrt(x)"]]],
  Root["x=0"]];
(*
1.3. Block Matrices and Algorithms
Thus, if
29
F = reshape(x, n2 , n) · B T ,
then G = (C ® D)F E Rn
2
x n can computed column-by-column using (1 .3.6) :
G(:, k) = reshape(D · reshape(F(: , k) , n, n) · CT , n2 , 1)
k = l :n.
It follows that y = reshape(G, N, 1 ) . A careful accounting reveals that 6n4 flops are
required. Ordinarily, a matrix-vector product of this dimension would require 2n6 flops.
The Kronecker product has a prominent role to play in tensor computations and
in §13.1 we detail more of its properties.*)

Block[Sqrt{"ay+ax"}, Definition[Inequality["-a/2<=x<=a/2 and -a/2<=y<=a/2"]],
  LaminaData[Property[Vertical["(-a/2, -a/2) | (a/2, -a/2) | (a/2, a/2) | (-a/2, a/2)"]]],
  Number[Vertical["4"]], Variables[Constant["a > 0"]], AlignmentPoint["r = a/2"],
  SoundAndGraphics["h = 1/2 (sqrt(2) - 1) a"], PageHeight["a"], Area["A = a^2"],
  RegionCentroid["x^_ = (0, 0)"], MetaCharacters["x" - Axis["J_x invisible comma x = a^4/12"]],
  Area["x" - Axis["J_y invisible comma y = a^4/12"]], PolarAxes[Commonest[LinearSolve["J_zz = a^4/6"]]],
  Product[Moment[LinearSolve["J_x invisible comma y = 0"]]],
  RadioButton["r_x = a/(2 sqrt(3)) r_y = a/(2 sqrt(3))"],
  Multicolumn["K = 1/3 a^4 (1 - (192 sum_(n=1)^inf tank(1/2 II (2 n - 1))/(2 n - 1)^5)/II^5)"],
  DistanceMatrix[Property[SiderealTime["a | a | a | a"]]], Perimeter["p = 4 a"],
  InterquartileRange["r = a/2"], CirculantGraph["R = a/sqrt(2)"],
  GeneratingFunction[Diamond["sqrt(2) a"]], ConversionOptions[Coefficient["x = 1"]],
  Mean[Line[SectionGrouping[Length["s^_ = 1/15 a (2 + sqrt(2) + 5 sin^(-1)(1))"]]]],
  Mean[Triangle[Area["A^_ = (11 a^2)/144"]]]];

Switch[Square[live.VectorQ["ax+ay"]], GreaterEqualLess[Diamond["ax+ay"]],
       Square[live.NumberForm["ax+ay"]],
       Definition[Inequality[GreaterEqualLess[Diamond["abs(x) + abs(y)<=a"]]]],
       Square["-a/2<=x<=a/2 and -a/2<=y<=a/2"]];

LaminaData[Property[Vertical["abs(x) + abs(y)<=a"]],
           Property[VerticalSlider["(-a, 0) | (0, -a) | (a, 0) | (0, a)"]],
           NumberForm[VertexList["4"]], Variables[ConstrainedMin["a > 0"]|ConstrainedMax["a > 0"]],
           Diagonal[Length["2 a | 2 a"]], Area["A = 2 a^2"], RegionCentroid["x^_ = (0, 0)"],
MeshCoordinates[Property[Area[CommonestFilter[MomentOfInertia["x"-Axis["J_x invisible comma x = a^4/3"]]]]]],
PolarPlot[CommonestFilter[Integer["J_zz = (2 a^4)/3"]]],
  Product[CommonestFilter[MomentOfInertia["J_x invisible comma y = 0"]]],
  RadioButton[TautologyQ[CoordinateBounds[Axes["r_x = a/sqrt(6) r_y = a/sqrt(6)"]]]],
  DistanceMatrix[PropertyValue[AddSides["sqrt(2) a | sqrt(2) a | sqrt(2) a | sqrt(2) a"]]],
  Perimeter["p = 4 sqrt(2) a"], InterquartileRange[Range["r = a/sqrt(2)"]],
  GeneratingFunction[DiamondMatrix["2 a"]], ConvexPolygonQ[Coefficient["x = 1"]]];


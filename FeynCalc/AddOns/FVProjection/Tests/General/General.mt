(* :Title: General.mt														*)

(*
	This software is covered by the GNU Lesser General Public License 3.
	Copyright (C) 1990-2015 Rolf Mertig
	Copyright (C) 1997-2015 Frederik Orellana
	Copyright (C) 2014-2015 Vladyslav Shtabovenko
*)

(* :Summary:  Unit tests for FVProjection									*)

(* ------------------------------------------------------------------------ *)


If [Names["FeynCalc`FVProjection*"]==={},
	FCDeclareHeader@ToFileName[{$FeynCalcDirectory, "AddOns",
	"FVProjection"}, "FVProjection.m"];
	Get@ToFileName[{$FeynCalcDirectory, "AddOns",
	"FVProjection"}, "FVProjection.m"]
]

ClearAll[tests];
tests = FileNames["*.test",FileNameJoin[{$FVProjectionDirectory, "Tests", "General"}]]
Get/@tests;

Map[Test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],TestID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`General`*"])];
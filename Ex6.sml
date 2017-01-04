

exception IllegalArgumentException;

(* Q1: Mine Sweeper *)

datatype SquareContent = Mine | Digit of int | Blank;
datatype Square = Revealed of SquareContent | Concealed of SquareContent;
datatype GameStatus = OnGoing | Success | Failure; 
type MineSweeperState = (Square list list * GameStatus);


(* 
Tip: implementing these helper functions might be useful for the implementation of revealSquare:

----------------------------------------------
Get the element at position (i,j) of the grid:
----------------------------------------------
fun getGridElement (grid, (i, j)) = ...

--------------------------------------------------------------------------
Replace the element at position (i,j) of the grid with some new element x:
--------------------------------------------------------------------------
fun updateGridElement (grid, (i, j), x) = ... 

If you choose to implement these functions, notice that instead of writing recursions by yourself, you can simply use compositions of SML list libraries functions, such as List.take, List.nth, reverse, etc. to implement these functions.

*)

fun createMineSweeperGrid (n:int, mines:((int*int) list)):(Square list list) = raise IllegalArgumentException;
	
fun determineStatusOf (g:Square list list):bool = raise IllegalArgumentException;

fun revealSquare (mss:MineSweeperState, pos: int*int):MineSweeperState = raise IllegalArgumentException;


(* Q1: Lambda *)

datatype LambdaToken = LP | RP | D | L | V of string;
datatype LambdaExpr = Var of string | Abs of string * LambdaExpr | App of LambdaExpr * LambdaExpr;

fun tokenizeLambdaString (str:string):LambdaToken list =  raise IllegalArgumentException;

fun parseLambda (tokens:LambdaToken list):LambdaExpr =  raise IllegalArgumentException;

fun simplify (lambda:LambdaExpr):LambdaExpr =  raise IllegalArgumentException;


fun lambdaToString (Var(v)) = v
|	lambdaToString (Abs(v, e1)) = "(#" ^ v ^ "." ^ (lambdaToString e1) ^ ")"
|	lambdaToString (App(e1, e2)) = "(" ^ (lambdaToString e1) ^ " " ^(lambdaToString e2) ^ ")";

fun evalLambda str = lambdaToString (simplify (parseLambda (tokenizeLambdaString str)));

	
(* use "test.sml"; *)
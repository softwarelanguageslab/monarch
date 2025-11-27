-- -*-Erlang-*-
-- Heavily adapted from the Core Erlang parser in Erlang OTP,
-- hence the following copyright notice applies:
-- %CopyrightBegin%
-- 
-- Copyright Ericsson AB 1999-2024. All Rights Reserved.
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- 
-- %CopyrightEnd%
--
-- Core Erlang Happy parser grammar
--
-- Have explicit productions for annotated phrases named anno_XXX.
-- This just does an XXX and adds the annotation.
{
module Syntax.Erlang.Parser where

import qualified Syntax.Erlang.Tokens as Tok
import Syntax.Erlang.AST
import Syntax.Span
import Syntax.Ide
}

-- Expect 0.
-- 
-- Nonterminals
-- 
-- module_definition module_export module_attribute module_defs
-- exported_names exported_name
-- attribute_list attribute
-- function_definition function_definitions
-- 
-- constant constants atomic_constant tuple_constant cons_constant tail_constant
-- other_pattern atomic_pattern tuple_pattern cons_pattern tail_pattern
-- binary_pattern segment_patterns segment_pattern
-- 
-- expression single_expression
-- literal literals atomic_literal tuple_literal cons_literal tail_literal fun_literal
-- nil tuple cons tail
-- binary segments segment
-- 
-- let_expr let_vars letrec_expr case_expr fun_expr
-- function_name
-- application_expr call_expr primop_expr arg_list
-- receive_expr timeout try_expr
-- sequence catch_expr
-- variable clause clause_pattern
-- 
-- map_expr anno_map_expr map_pairs anno_map_pair map_pair map_pair_assoc map_pair_exact
-- map_pattern map_pair_patterns map_pair_pattern
-- 
-- annotation anno_atom anno_fun anno_expression anno_expressions
-- anno_variable anno_variables anno_pattern anno_patterns
-- anno_function_name
-- anno_literal
-- anno_segment anno_segment_pattern
-- anno_clause anno_clauses.
-- 
-- Terminals

%name parse module_definition
%tokentype { Tok.Token }

%token
-- Separators
   '('  { Tok.LPar {} }
   ')'  { Tok.RPar {} } 
   '{'  { Tok.LBra {} }
   '}'  { Tok.RBra {} }
   '['  { Tok.LBrt {} }
   ']'  { Tok.RBrt {} }
   '|'  { Tok.Pipe {} } 
   ','  { Tok.Comm {} }
   '->' { Tok.Arro {} }
   '='  { Tok.Eqls {} } 
   '/'  { Tok.Div  {} }
   '<'  { Tok.Lt   {} } 
   '>'  { Tok.Gt   {} }
   ':'  { Tok.Coln {} }
   '-|' { Tok.Anno {} }
   '#'  { Tok.Pnd  {} }
   '~'  { Tok.Tild {} } 
   '=>' { Tok.DArr {} }
   ':=' { Tok.Asgn {} }
-- Keywords (atoms are assumed to always be single-quoted).
   'module'     { Tok.Mod  {} }
   'attributes' { Tok.Attr {} } 
   'do'         { Tok.Do   {} } 
   'let'        { Tok.Let  {} }
   'in'         { Tok.In   {} }
   'letrec'     { Tok.Letr {} }
   'apply'      { Tok.Appl {} }
   'call'       { Tok.Call {} }
   'primop'     { Tok.PrmO {} }
   'case'       { Tok.Case {} }
   'of'         { Tok.Of   {} }
   'end'        { Tok.End  {} }
   'when'       { Tok.When {} }
   'fun'        { Tok.Fun  {} }
   'try'        { Tok.Try  {} }
   'catch'      { Tok.Catc {} }
   'receive'    { Tok.Recv {} }
   'after'      { Tok.Afte {} }
-- Literal tokens (provided by the tokeniser):
   char         { Tok.Char {} }
   integer      { Tok.Int  {} }
   float        { Tok.Floa {} }
   atomT        { Tok.Atom {} }
   string       { Tok.Str  {} }
   var          { Tok.Var  {}   }  
   eof          { Tok.EOF       }

%%

atom : atomT { Atom (Tok.atomName $1) (spanOf $1) }

-- Literal tokens NOT provided by the tokenise:

nil : '[' ']' { Tok.Nil (Tok.srcSpan $1) } 

module_definition :
    'module' atom module_export module_attribute module_defs 'end' 
        { Constr (Module $2 $3 $4 $5 (mkSpan $1 $6)) }
module_definition :
    '(' 'module' atom module_export module_attribute module_defs 'end' '-|' annotation ')' {
            Ann (Module $3 $4 $5 $6 (mkSpan $1 $7)) $9
        }

module_export : '[' ']' { [] }
module_export : '[' exported_names ']' { $2 }

exported_names : exported_name ',' exported_names { $1 : $3 }
exported_names : exported_name { [ $1 ] }

exported_name : anno_function_name { $1 }
-- 
module_attribute : 'attributes' '[' ']' { [] }
module_attribute : 'attributes' '[' attribute_list ']' { $3 }
-- 
attribute_list : attribute ',' attribute_list { $1 : $3 }
attribute_list : attribute  { [ $1 ] }
-- 
attribute : anno_atom '=' anno_constant { Attribute $1 $3 (spanning $1 $3) }
-- 
anno_atom : atom { Constr $1 }
anno_atom : '(' atom '-|' annotation ')' { Ann $2 $4 }
-- 
anno_literal : literal { Constr $1 }
anno_literal : '(' literal '-|' annotation ')' { Ann $2 $4 }
-- 
module_defs : function_definitions { $1 }
-- 
annotation : '[' ']' { Annotation [] (spanning $1 $2) }
annotation : '[' constants ']' { Annotation $2 (spanning $1 $3) }
-- 
function_definitions :
    function_definition function_definitions { $1 : $2 }
function_definitions : { [] }
-- 
function_definition :
    anno_function_name '=' anno_fun { FunDef $1 $3 (spanning $1 $3) }
-- 
anno_fun : '(' fun_expr '-|' annotation ')' { Ann $2 $4 }
anno_fun : fun_expr { Constr $1 }
-- 
-- Constant terms for annotations and attributes.
--  These are represented by straight unabstract Erlang.
--
anno_constant : constant { Constr $1 }
anno_constant : '(' constant '-|' annotation ')' { Ann $2 $4 }

constant : atomic_constant { $1 }
constant : tuple_constant  { $1 }
constant : cons_constant   { $1 }
-- 
constants : constant ',' constants { $1 : $3 }
constants : constant { [$1] }
-- 
atomic_constant : char   { CharLit (Tok.charVal $1) (spanOf $1) }
atomic_constant : integer { IntegerLit (Tok.intVal $1) (spanOf $1) }
atomic_constant : float { FloatLit (Tok.floatVal $1) (spanOf $1) }
atomic_constant : atom { AtomLit $1 (spanOf $1) }
atomic_constant : string { StringLit (Tok.strVal $1) (spanOf $1) }
atomic_constant : nil { NilLit (spanOf $1) }
-- 
tuple_constant : '{' '}' { TupleLit [] (spanning $1 $2) }
tuple_constant : '{' constants '}' { TupleLit $2 (spanning $1 $3) }
-- 
cons_constant : '[' constant tail_constant { ConsLit $2 $3 (spanning $1 $3) }

tail_constant : ']' { NilLit (spanOf $1) }
tail_constant : '|' constant ']' { $2 }
tail_constant : ',' constant tail_constant { ConsLit $2 $3 (spanning $1 $3) }
-- 
-- Patterns
--  We have to be a little sneaky here as we would like to be able to
--  do:
--  V = {a}
--  ( V = {a} -| <anno> )
--  ( V -| <anno> ) = {a}
--  V = ( {a} -| <anno> )
--  ( ( V -| <anno> ) = ( {a} -| <anno> ) -| <anno> )
-- 
-- anno_pattern -> '(' other_pattern '-|' annotation ')' :
-- 	cerl:set_ann('$2', '$4').
-- anno_pattern -> other_pattern : '$1'.
-- anno_pattern -> anno_variable : '$1'.
-- 
-- anno_patterns -> anno_pattern ',' anno_patterns : ['$1' | '$3'].
-- anno_patterns -> anno_pattern : ['$1'].
-- 
-- other_pattern -> atomic_pattern : '$1'.
-- other_pattern -> tuple_pattern : '$1'.
-- other_pattern -> map_pattern : '$1'.
-- other_pattern -> cons_pattern : '$1'.
-- other_pattern -> binary_pattern : '$1'.
-- other_pattern -> anno_variable '=' anno_pattern :
-- 	#c_alias{var='$1',pat='$3'}.
-- 
-- atomic_pattern -> atomic_literal : '$1'.
-- 
-- tuple_pattern -> '{' '}' : c_tuple([]).
-- tuple_pattern -> '{' anno_patterns '}' : c_tuple('$2').
-- 
-- map_pattern -> '~' '{' '}' '~' : c_map_pattern([]).
-- map_pattern -> '~' '{' map_pair_patterns '}' '~' :
-- 		   c_map_pattern('$3').
-- map_pattern -> '~' '{' map_pair_patterns '|' anno_map_expr '}' '~' :
-- 		   ann_c_map_pattern('$5', '$3').
-- 
-- map_pair_patterns -> map_pair_pattern : ['$1'].
-- map_pair_patterns -> map_pair_pattern ',' map_pair_patterns : ['$1' | '$3'].
-- 
-- map_pair_pattern -> anno_expression ':=' anno_pattern :
-- 			#c_map_pair{op=#c_literal{val=exact},
-- 				    key='$1',val='$3'}.
-- map_pair_pattern -> '(' anno_expression ':=' anno_pattern '-|' annotation ')' :
-- 			#c_map_pair{anno='$6',op=#c_literal{val=exact},
-- 				    key='$2',val='$4'}.
-- 
-- cons_pattern -> '[' anno_pattern tail_pattern :
-- 		    c_cons('$2', '$3').
-- 
-- tail_pattern -> ']' : #c_literal{val=[]}.
-- tail_pattern -> '|' anno_pattern ']' : '$2'.
-- tail_pattern -> ',' anno_pattern tail_pattern :
-- 		    c_cons('$2', '$3').
-- 
-- binary_pattern -> '#' '{' '}' '#' : #c_binary{segments=[]}.
-- binary_pattern -> '#' '{' segment_patterns '}' '#' : #c_binary{segments='$3'}.
-- 
-- segment_patterns -> anno_segment_pattern ',' segment_patterns : ['$1' | '$3'].
-- segment_patterns -> anno_segment_pattern : ['$1'].
-- 
-- anno_segment_pattern -> segment_pattern : '$1'.
-- anno_segment_pattern -> '(' segment_pattern '-|' annotation ')' :
--       cerl:set_ann('$2', '$4').
-- 
-- segment_pattern -> '#' '<' anno_pattern '>' '(' anno_expressions ')':
-- 	case '$6' of
-- 	    [S,U,T,Fs] ->
-- 		#c_bitstr{val='$3',size=S,unit=U,type=T,flags=Fs};
-- 	    true ->
-- 		return_error(tok_line('$1'),
-- 			     "expected 4 arguments in binary segment")
-- 	end.
-- 
variable : var { Ide (Tok.varName $1) (spanOf $1) }
-- 
anno_variables : anno_variable ',' anno_variables { $1 : $3 }
anno_variables : anno_variable { [$1] }
-- 
anno_variable : variable { Constr $1 }
anno_variable : '(' variable '-|' annotation ')' { Ann $2 $4 }
-- 
-- -- Expressions
-- --  Must split expressions into two levels as nested value expressions
-- --  are illegal.
-- 
anno_expression : expression { Constr $1 }
anno_expression : '(' expression '-|' annotation ')' { Ann $2 $4 }
-- 
anno_expressions : anno_expression ',' anno_expressions { $1 : $3 }
anno_expressions : anno_expression { [$1] }
-- 
expression : '<' '>' { ValuesExpr [] (spanning $1 $2) }
expression : '<' anno_expressions '>' { ValuesExpr $2 (spanning $1 $3) }
expression : single_expression { $1 }
-- 
single_expression : atomic_constant { LitExpr $1 (spanOf $1)  }
single_expression : tuple { $1 }
single_expression : cons { $1 }
single_expression : binary { $1 }
single_expression : anno_variable { VarExpr $1 (spanOf $1) }
single_expression : function_name { FunNameExpr $1 (spanOf $1) }
single_expression : fun_literal { $1 }
single_expression : fun_expr { $1 }
single_expression : let_expr { $1 }
single_expression : letrec_expr { $1 }
single_expression : case_expr { $1 }
single_expression : receive_expr { $1 }
single_expression : application_expr { $1 }
single_expression : call_expr { $1 }
single_expression : primop_expr { $1 }
single_expression : try_expr { $1 }
single_expression : sequence { $1 }
single_expression : catch_expr { $1 }
single_expression : map_expr { $1 }
-- 
literal : constant { LitExpr $1 (spanOf $1) }

literals : literal ',' literals { $1 : $3 }
literals : literal { [$1] }

fun_literal : 'fun' atom ':' atom '/' integer
    { LitExpr (AtomLit (Atom "fun_literal" (spanning $1 $6)) (spanning $1 $6)) (spanning $1 $6) }

tuple : '{' '}' { TupleExpr [] (spanning $1 $2) }
tuple : '{' anno_expressions '}' { TupleExpr $2 (spanning $1 $3) }
-- 
map_expr : '~' '{' '}' '~' { MapExpr [] Nothing (spanning $1 $4) }
map_expr : '~' '{' map_pairs '}' '~' { MapExpr $3 Nothing (spanning $1 $5) }
map_expr : '~' '{' map_pairs '|' anno_variable '}' '~'
    { MapExpr $3 (Just (Constr (VarExpr $5 (spanOf $5)))) (spanning $1 $7) }
map_expr : '~' '{' map_pairs '|' anno_map_expr '}' '~'
    { MapExpr $3 (Just $5) (spanning $1 $7) }

anno_map_expr : map_expr { Constr $1 }
anno_map_expr : '(' map_expr '-|' annotation ')' { Ann $2 $4 }

map_pairs : anno_map_pair ',' map_pairs { $1 : $3 }
map_pairs : anno_map_pair { [$1] }

anno_map_pair : map_pair { Constr $1 }
anno_map_pair : '(' map_pair '-|' annotation ')' { Ann $2 $4 }

map_pair : map_pair_assoc { $1 }
map_pair : map_pair_exact { $1 }

map_pair_assoc : anno_expression '=>' anno_expression
    { MapPairAssoc $1 $3 (spanning $1 $3) }
map_pair_exact : anno_expression ':=' anno_expression
    { MapPairExact $1 $3 (spanning $1 $3) }

cons : '[' anno_expression tail { ConsExpr $2 $3 (spanning $1 $3) }

tail : ']' { Constr (LitExpr (NilLit (spanOf $1)) (spanOf $1)) }
tail : '|' anno_expression ']' { $2 }
tail : ',' anno_expression tail { Constr (ConsExpr $2 $3 (spanning $1 $3)) }

binary : '#' '{' '}' '#' { BinaryExpr [] (spanning $1 $4) }
binary : '#' '{' segments '}' '#' { BinaryExpr $3 (spanning $1 $5) }

segments : anno_segment ',' segments { $1 : $3 }
segments : anno_segment { [$1] }

anno_segment : segment { Constr $1 }
anno_segment : '(' segment '-|' annotation ')' { Ann $2 $4 }

segment : '#' '<' anno_expression '>' '(' anno_expressions ')'
    { Bitstr $3 $6 (spanning $1 $7) }

anno_pattern : '(' other_pattern '-|' annotation ')' { Ann $2 $4 }
anno_pattern : other_pattern { Constr $1 }
anno_pattern : anno_variable { Constr (VarPat $1 (spanOf $1)) }

anno_patterns : anno_pattern ',' anno_patterns { $1 : $3 }
anno_patterns : anno_pattern { [$1] }

other_pattern : atomic_pattern { $1 }
other_pattern : tuple_pattern { $1 }
other_pattern : map_pattern { $1 }
other_pattern : cons_pattern { $1 }
other_pattern : binary_pattern { $1 }
other_pattern : anno_variable '=' anno_pattern { AliasPat $1 $3 (spanning $1 $3) }

atomic_pattern : atomic_constant { AtomicPat $1 (spanOf $1) }

tuple_pattern : '{' '}' { TuplePat [] (spanning $1 $2) }
tuple_pattern : '{' anno_patterns '}' { TuplePat $2 (spanning $1 $3) }

map_pattern : '~' '{' '}' '~' { MapPat [] Nothing (spanning $1 $4) }
map_pattern : '~' '{' map_pair_patterns '}' '~'
    { MapPat $3 Nothing (spanning $1 $5) }
map_pattern : '~' '{' map_pair_patterns '|' anno_map_expr '}' '~'
    { MapPat $3 (Just $5) (spanning $1 $7) }

map_pair_patterns : map_pair_pattern ',' map_pair_patterns { $1 : $3 }
map_pair_patterns : map_pair_pattern { [$1] }

map_pair_pattern : anno_expression ':=' anno_pattern
    { Constr (MapPairPat $1 $3 (spanning $1 $3)) }
map_pair_pattern : '(' anno_expression ':=' anno_pattern '-|' annotation ')'
    { Ann (MapPairPat $2 $4 (spanning $1 $7)) $6 }

cons_pattern : '[' anno_pattern tail_pattern { ConsPat $2 $3 (spanning $1 $3) }

tail_pattern : ']' { Constr (AtomicPat (NilLit (spanOf $1)) (spanOf $1)) }
tail_pattern : '|' anno_pattern ']' { $2 }
tail_pattern : ',' anno_pattern tail_pattern { Constr (ConsPat $2 $3 (spanning $1 $3)) }

binary_pattern : '#' '{' '}' '#' { BinaryPat [] (spanning $1 $4) }
binary_pattern : '#' '{' segment_patterns '}' '#' { BinaryPat $3 (spanning $1 $5) }

segment_patterns : anno_segment_pattern ',' segment_patterns { $1 : $3 }
segment_patterns : anno_segment_pattern { [$1] }

anno_segment_pattern : segment_pattern { Constr $1 }
anno_segment_pattern : '(' segment_pattern '-|' annotation ')' { Ann $2 $4 }

segment_pattern : '#' '<' anno_pattern '>' '(' anno_expressions ')'
    { BitstrPat $3 $6 (spanning $1 $7) }

function_name : atom '/' integer { Function $1 (Tok.intVal $3) (spanning $1 $3) }
-- 
anno_function_name : function_name { Constr $1 }
anno_function_name : '(' function_name '-|' annotation ')' { Ann $2 $4 }

let_vars : anno_variable { [$1] }
let_vars : '<' '>' { [] }
let_vars : '<' anno_variables '>' { $2 }

sequence : 'do' anno_expression anno_expression { SeqExpr $2 $3 (spanning $1 $3) }

fun_expr : 'fun' '(' ')' '->' anno_expression { FunExpr [] $5 (spanning $1 $5) }
fun_expr : 'fun' '(' anno_variables ')' '->' anno_expression { FunExpr $3 $6 (spanning $1 $6) }

let_expr : 'let' let_vars '=' anno_expression 'in' anno_expression
    { LetExpr $2 $4 $6 (spanning $1 $6) }

letrec_expr : 'letrec' function_definitions 'in' anno_expression
    { LetRecExpr $2 $4 (spanning $1 $4) }

case_expr : 'case' anno_expression 'of' anno_clauses 'end'
    { CaseExpr $2 $4 (spanning $1 $5) }

anno_clauses : anno_clause anno_clauses { $1 : $2 }
anno_clauses : anno_clause { [$1] }

anno_clause : clause { Constr $1 }
anno_clause : '(' clause '-|' annotation ')' { Ann $2 $4 }

clause : clause_pattern 'when' anno_expression '->' anno_expression
    { Clause $1 $3 $5 (spanning $2 $5) }

clause_pattern : anno_pattern { [$1] }
clause_pattern : '<' '>' { [] }
clause_pattern : '<' anno_patterns '>' { $2 }

application_expr : 'apply' anno_expression arg_list
    { ApplyExpr $2 $3 (spanning $1 (if $3 == [] then $2 else (last $3))) }

call_expr : 'call' anno_expression ':' anno_expression arg_list
    { CallExpr $2 $4 $5 (spanning $1 $5) }

primop_expr : 'primop' anno_expression arg_list
    { PrimOpExpr $2 $3 (spanning $1 (if $3 == [] then $2 else (last $3))) }

arg_list : '(' ')' { [] }
arg_list : '(' anno_expressions ')' { $2 }

try_expr : 'try' anno_expression 'of' let_vars '->' anno_expression
           'catch' let_vars '->' anno_expression
    { TryExpr $2 $4 $6 $8 $10 (spanning $1 $10) }

catch_expr : 'catch' anno_expression { CatchExpr $2 (spanning $1 $2) }

receive_expr : 'receive' timeout
    { let (t, a) = $2 in ReceiveExpr [] t a (spanning $1 a) }
receive_expr : 'receive' anno_clauses timeout
    { let (t, a) = $3 in ReceiveExpr $2 t a (spanning $1 a) }

timeout : 'after' anno_expression '->' anno_expression { ($2, $4) }
-- 

{
happyError :: [Tok.Token] -> a 
happyError = error . show
}
-- vim: syntax=haskell

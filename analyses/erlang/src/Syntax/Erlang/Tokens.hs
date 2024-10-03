-- | Core Erlang tokens, derived from https://github.com/erlang/otp/blob/master/lib/compiler/src/
module Syntax.Erlang.Tokens(Token) where

data SrcSpan
spanOf :: Token -> SrcSpan

data Token = LPar SrcSpan
           | RPar SrcSpan
           | LBra SrcSpan
           | RBra SrcSpan
           | LBrt SrcSpan
           | RBrt SrcSpan
           | Pipe SrcSpan
           | Comm SrcSpan
           | Arro SrcSpan
           | Eqls SrcSpan
           | Div  SrcSpan
           | Lt   SrcSpan
           | Gt   SrcSpan
           | Coln SrcSpan
           | Anno SrcSpan
           | Pnd  SrcSpan
           | Tild SrcSpan
           | DArr SrcSpan
           | Asgn SrcSpan
           | Mod  SrcSpan
           | Attr SrcSpan
           | Do   SrcSpan
           | Let  SrcSpan
           | In   SrcSpan
           | Letr SrcSpan
           | Appl SrcSpan
           | Call SrcSpan
           | PrmO SrcSpan
           | Case SrcSpan
           | Of   SrcSpan
           | End  SrcSpan
           | When SrcSpan
           | Fun  SrcSpan
           | Try  SrcSpan
           | Catc SrcSpan
           | Recv SrcSpan
           | Afte SrcSpan
           | Char SrcSpan
           | Int  Integer SrcSpan
           | Floa Float SrcSpan
           | Atom String SrcSpan
           | Str  String SrcSpan
           | Var  String SrcSpan
           | Nil  SrcSpan

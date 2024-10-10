-- | Core Erlang tokens, derived from https://github.com/erlang/otp/blob/master/lib/compiler/src/
module Syntax.Erlang.Tokens(Token(..), SrcSpan(..), spanOf) where

-- | Source location information about the tokens in 
-- the program.
data SrcSpan = SrcSpan { 
               startLine :: Int, 
               startCol  :: Int, 
               endLine   :: Int, 
               endCol    :: Int
             } deriving (Eq, Ord, Show)
spanOf :: Token -> SrcSpan
spanOf = srcSpan

data Token = LPar { srcSpan :: !SrcSpan }
           | RPar { srcSpan :: !SrcSpan }
           | LBra { srcSpan :: !SrcSpan }
           | RBra { srcSpan :: !SrcSpan }
           | LBrt { srcSpan :: !SrcSpan }
           | RBrt { srcSpan :: !SrcSpan }
           | Pipe { srcSpan :: !SrcSpan }
           | Comm { srcSpan :: !SrcSpan }
           | Arro { srcSpan :: !SrcSpan }
           | Eqls { srcSpan :: !SrcSpan }
           | Div  { srcSpan :: !SrcSpan }
           | Lt   { srcSpan :: !SrcSpan }
           | Gt   { srcSpan :: !SrcSpan }
           | Coln { srcSpan :: !SrcSpan }
           | Anno { srcSpan :: !SrcSpan }
           | Pnd  { srcSpan :: !SrcSpan }
           | Tild { srcSpan :: !SrcSpan }
           | DArr { srcSpan :: !SrcSpan }
           | Asgn { srcSpan :: !SrcSpan }
           | Mod  { srcSpan :: !SrcSpan }
           | Attr { srcSpan :: !SrcSpan }
           | Do   { srcSpan :: !SrcSpan }
           | Let  { srcSpan :: !SrcSpan }
           | In   { srcSpan :: !SrcSpan }
           | Letr { srcSpan :: !SrcSpan }
           | Appl { srcSpan :: !SrcSpan }
           | Call { srcSpan :: !SrcSpan }
           | PrmO { srcSpan :: !SrcSpan }
           | Case { srcSpan :: !SrcSpan }
           | Of   { srcSpan :: !SrcSpan }
           | End  { srcSpan :: !SrcSpan }
           | When { srcSpan :: !SrcSpan }
           | Fun  { srcSpan :: !SrcSpan }
           | Try  { srcSpan :: !SrcSpan }
           | Catc { srcSpan :: !SrcSpan }
           | Recv { srcSpan :: !SrcSpan }
           | Afte { srcSpan :: !SrcSpan }
           | Char { charVal :: Char, 
                    srcSpan :: !SrcSpan }
           | Int  { intVal  :: !Integer, 
                    srcSpan :: !SrcSpan }
           | Floa { floatVal :: !Float, 
                    srcSpan  :: !SrcSpan }
           | Atom { atomName :: !String, srcSpan :: !SrcSpan }
           | Str  { strVal  :: !String,
                    srcSpan :: !SrcSpan }
           | Var  { varName :: !String,
                    srcSpan :: !SrcSpan }
           | Nil  { srcSpan :: !SrcSpan }
           -- | Special error-token used to 
           -- signal that the input string 
           -- could not be tokenized at 
           -- the given position.
           | Error { srcSpan :: !SrcSpan, 
                     reason  :: !String }
           deriving (Eq, Ord, Show)


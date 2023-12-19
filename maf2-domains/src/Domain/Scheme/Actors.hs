-- | Actor-specific extensions of the Scheme-domain
module Domain.Scheme.Actors(ActorDomain(..), ActorRef(..)) where

import Domain.Scheme.Class 

import Data.Kind

class ActorRef a where 
   -- The type of actor where the actor reference points to
   type Actor a :: Type

class (SchemeDomain v) => ActorDomain v where
   -- The type of actor reference included in abtract value `v`
   type ARef v :: Type

   -- Inject an actor reference in the abstract domain
   aref :: ARef v -> v

   -- Extract the set of actor references from the abstract domain
   arefs :: v -> m (ARef v)

   -- Inject a behavior of an actor in the abstract domain
   beh  :: (Exp v, Env v) -> v

   -- Extract behaviors from the abstract values in the domain
   withBehs :: ((Exp v, Env v) -> m a) -> v -> m a

   -- Inject a mirror in the abstract domain
   mirror :: (Exp v, Env v) -> v
   
   -- Extract mirrors from the abstract value 
   mirrors ::  ((Exp v, Env v) -> m a) -> v -> m a

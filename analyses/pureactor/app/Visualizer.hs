{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts #-}

module Visualizer (renderSystem) where

import Analysis.PureActor
import Domain.PureActor
import Language.PureActor
import Lucid
import Control.Lens ((^.))
import qualified Data.Map.Lazy as Map
import qualified Data.Set as Set
import qualified Data.Tree as Tree
import qualified Data.Text as T
import Lattice.Class (BottomLattice(..))

-- | A node in our visualization tree
data SystemNode = ActorNode ActorRef (Set Turn)

-- | Convert the System to a Tree structure for visualization
systemToTree :: System -> Tree.Tree SystemNode
systemToTree sys = Tree.Node (ActorNode MainRef mainTurns) (map (actorToTree sys) spawnedByMain)
  where
    mainTurns = fromMaybe Set.empty $ Map.lookup MainRef (sys ^. actorTurns)
    spawnedByMain = findSpawnedBy MainRef sys

findSpawnedBy :: ActorRef -> System -> [ActorRef]
findSpawnedBy parent sys = 
    let allTurns = fromMaybe Set.empty $ Map.lookup parent (sys ^. actorTurns)
        spawnedRefs = Set.toList $ Set.unions $ map getSpawned (Set.toList allTurns)
    in spawnedRefs
  where
    getSpawned (Turn _ _ s) = Map.keysSet (s ^. spawned)
    getSpawned (Terminated s) = Map.keysSet (s ^. spawned)

actorToTree :: System -> ActorRef -> Tree.Tree SystemNode
actorToTree sys ref = Tree.Node (ActorNode ref turns) (map (actorToTree sys) (findSpawnedBy ref sys))
  where
    turns = fromMaybe Set.empty $ Map.lookup ref (sys ^. actorTurns)

-- | Render the tree to HTML
renderSystem :: System -> Html ()
renderSystem sys = doctypehtml_ $ do
    head_ $ do
        title_ "PureActor System Visualization"
        style_ $ "body { font-family: sans-serif; margin: 40px; line-height: 1.5; color: #333; background-color: #fdfdfd; } " <>
                 "h1 { border-bottom: 2px solid #eee; padding-bottom: 10px; color: #2c3e50; } " <>
                 "h2 { margin-top: 30px; border-bottom: 1px solid #eee; color: #34495e; } " <>
                 "ul { list-style-type: none; padding-left: 20px; } " <>
                 "li { margin-top: 10px; border-left: 2px solid #f0f0f0; padding-left: 15px; } " <>
                 ".actor { font-weight: bold; font-family: monospace; color: #2980b9; font-size: 1.1em; } " <>
                 ".turn { margin-top: 15px; background: #fff; padding: 15px; border-radius: 6px; border: 1px solid #eee; box-shadow: 0 2px 4px rgba(0,0,0,0.05); } " <>
                 ".terminated { color: #c0392b; font-weight: bold; } " <>
                 ".details { margin-top: 5px; font-size: 0.9em; color: #666; } " <>
                 ".store, .mailboxes { font-family: monospace; font-size: 0.85em; background: #f4f4f4; padding: 15px; border-radius: 5px; overflow-x: auto; } " <>
                 ".store-table { width: 100%; border-collapse: collapse; margin-top: 10px; background: white; } " <>
                 ".store-table th, .store-table td { text-align: left; padding: 12px; border: 1px solid #eee; vertical-align: top; } " <>
                 ".store-table th { background-color: #f8f9fa; color: #333; font-weight: bold; } " <>
                 ".tag { color: #8e44ad; font-weight: bold; } " <>
                 ".val { color: #27ae60; } " <>
                 ".expr { font-style: italic; color: #d35400; font-family: monospace; } " <>
                 ".env-table { margin-top: 5px; border-collapse: collapse; font-size: 0.9em; } " <>
                 ".env-table td { padding: 2px 8px; border: 1px solid #f0f0f0; } " <>
                 ".highlight { background-color: #fff3cd !important; transition: background-color 0.5s ease; } " <>
                 "a.adr-link { color: #3498db; text-decoration: none; border-bottom: 1px dotted #3498db; cursor: pointer; } " <>
                 "a.adr-link:hover { color: #2980b9; border-bottom: 1px solid #2980b9; } " <>
                 ".val-label { font-weight: bold; color: #555; } " <>
                 ".val-container ul { margin: 0; padding-left: 15px; }"
        script_ "function highlightAddr(id) { \
                \  const el = document.getElementById(id); \
                \  if (el) { \
                \    const all = document.querySelectorAll('.highlight'); \
                \    all.forEach(x => x.classList.remove('highlight')); \
                \    el.classList.add('highlight'); \
                \    el.scrollIntoView({ behavior: 'smooth', block: 'center' }); \
                \  } \
                \}"
    body_ $ do
        h1_ "PureActor System Visualization"
        
        h2_ "Global Shared Store"
        div_ [class_ "store"] $ do
            renderStore (sys ^. storeSys)
        
        h2_ "Current Mailboxes"
        div_ [class_ "mailboxes"] $ do
            renderMailboxes (sys ^. mailboxes)
        
        h2_ "Actor Hierarchy & Reachable Turns"
        div_ [class_ "system-tree"] $ do
            ul_ $ renderTreeNode (systemToTree sys)

renderMailboxes :: Map ActorRef MB -> Html ()
renderMailboxes mbs = ul_ $ forM_ (Map.toList mbs) $ \(ref, mb) -> li_ $ do
    span_ [class_ "actor"] $ toHtml (show ref :: Text)
    div_ [class_ "details"] $ do
        if Set.null mb 
            then i_ "Empty"
            else ul_ $ forM_ (Set.toList mb) $ \(Tag tag, val) -> li_ $ do
                span_ [class_ "tag"] $ toHtml (fromString tag :: Text)
                span_ " : "
                span_ [class_ "val"] $ toHtml (show val :: Text)

renderStore :: Sto -> Html ()
renderStore stoMap = table_ [class_ "store-table"] $ do
    thead_ $ tr_ $ do
        th_ "Address"
        th_ "Value"
    tbody_ $ forM_ (Map.toList stoMap) $ \(adr, val) -> tr_ [id_ (addrId adr)] $ do
        td_ $ toHtml (show adr :: Text)
        td_ $ renderVal val

addrId :: Adr -> Text
addrId (Adr sp) = "adr-" <> T.replace ":" "-" (T.replace " " "-" (T.replace "@" "-" (show sp :: Text)))

renderVal :: Val -> Html ()
renderVal v = div_ [class_ "val-container"] $ do
    ul_ $ do
        unless (Set.null (refs v)) $ li_ $ do
            span_ [class_ "val-label"] "Refs: " 
            toHtml (show (refs v) :: Text)
        unless (isBottom (ints v)) $ li_ $ do
            span_ [class_ "val-label"] "Ints: "
            toHtml (show (ints v) :: Text)
        unless (isBottom (bools v)) $ li_ $ do
            span_ [class_ "val-label"] "Bools: "
            toHtml (show (bools v) :: Text)
        when (isJust (nil v)) $ li_ "Nil"
        unless (Set.null (behs v)) $ li_ $ do
            span_ [class_ "val-label"] "Behaviors: "
            toHtml (show (behs v) :: Text)
  where
    isBottom :: (Eq a, BottomLattice a) => a -> Bool
    isBottom x = x == bottom

renderTreeNode :: Tree.Tree SystemNode -> Html ()
renderTreeNode (Tree.Node (ActorNode ref turns) children) = li_ $ do
    span_ [class_ "actor"] $ toHtml (show ref :: Text)
    div_ [class_ "details"] $ do
        p_ $ "Total Reachable Turns: " <> toHtml (show (Set.size turns) :: Text)
        ul_ $ forM_ (Set.toList turns) $ \t -> li_ [class_ "turn"] $ renderTurn t
    unless (null children) $ ul_ $ mapM_ renderTreeNode children

renderTurn :: Turn -> Html ()
renderTurn (Turn expr r s) = do
    div_ $ do
        span_ "Evaluating: "
        span_ [class_ "expr"] $ toHtml (show expr :: Text)
    div_ [class_ "details"] $ do
        p_ "Environment:"
        renderEnv (r ^. env)
        p_ $ "Inbox: " <> toHtml (show (s ^. inbox) :: Text)
        unless (Map.null (s ^. outbox)) $ do
            p_ "Outbox:"
            ul_ $ forM_ (Map.toList (s ^. outbox)) $ \(target, mb) -> li_ $ do
                toHtml (show target :: Text) <> ": " <> toHtml (show mb :: Text)
        unless (Map.null (s ^. spawned)) $ do
            p_ "Spawned during turn:"
            ul_ $ forM_ (Map.keys (s ^. spawned)) $ \targetRef -> li_ $ toHtml (show targetRef :: Text)

renderTurn (Terminated s) = do
    div_ [class_ "terminated"] "Terminated"
    div_ [class_ "details"] $ do
        p_ $ "Final Inbox: " <> toHtml (show (s ^. inbox) :: Text)

renderEnv :: Env -> Html ()
renderEnv e = table_ [class_ "env-table"] $ do
    forM_ (Map.toList e) $ \(name, adr) -> tr_ $ do
        td_ $ toHtml (fromString name :: Text)
        td_ $ a_ [class_ "adr-link", onclick_ ("highlightAddr('" <> addrId adr <> "')"), href_ "javascript:void(0)"] $ toHtml (show adr :: Text)

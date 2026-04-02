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
import Analysis.PureActor.Mailbox.Graph (Graph(..))

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

-- | Render the systems trace to HTML
renderSystem :: [System] -> Html ()
renderSystem systems = doctypehtml_ $ do
    head_ $ do
        title_ "PureActor Trace Visualization"
        style_ $ "body { font-family: sans-serif; margin: 40px 40px 100px 40px; line-height: 1.5; color: #333; background-color: #fdfdfd; } " <>
                 "h1 { border-bottom: 2px solid #eee; padding-bottom: 10px; color: #2c3e50; } " <>
                 "h2 { margin-top: 30px; border-bottom: 1px solid #eee; color: #34495e; } " <>
                 "ul { list-style-type: none; padding-left: 20px; } " <>
                 "li { margin-top: 10px; border-left: 2px solid #f0f0f0; padding-left: 15px; } " <>
                 ".actor { font-weight: bold; font-family: monospace; color: #2980b9; font-size: 1.1em; cursor: pointer; } " <>
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
                 ".val-container ul { margin: 0; padding-left: 15px; } " <>
                 ".mailbox-graph { border: 1px solid #ddd; padding: 10px; background: #fff; margin-top: 5px; border-radius: 4px; font-family: monospace; } " <>
                 ".graph-node { display: inline-block; padding: 4px 8px; margin: 4px; background: #f8f9fa; border: 1px solid #ddd; border-radius: 4px; font-size: 0.9em; } " <>
                 ".graph-edge { color: #999; font-size: 1.2em; margin: 0 8px; vertical-align: middle; } " <>
                 ".graph-tag { color: #d35400; font-weight: bold; } " <>
                 ".top-node { border: 2px solid #27ae60; background: #e8f5e9; } " <>
                 ".bottom-node { border: 2px solid #e74c3c; background: #fdecea; } " <>
                 ".top-bottom-node { border: 2px solid #8e44ad; background: #f3e5f5; } " <>
                 ".controls { margin-bottom: 20px; position: sticky; top: 0; background: #fdfdfd; padding: 10px 0; border-bottom: 1px solid #eee; z-index: 100; display: flex; align-items: center; } " <>
                 ".btn { background: #3498db; color: #fff; border: none; padding: 8px 15px; border-radius: 4px; cursor: pointer; margin-right: 10px; font-size: 0.9em; } " <>
                 ".btn:hover { background: #2980b9; } " <>
                 "details summary { outline: none; list-style: none; } " <>
                 "details summary::-webkit-details-marker { display: none; } " <>
                 "details summary::before { content: '▶ '; display: inline-block; width: 1.5em; transition: transform 0.2s; } " <>
                 "details[open] > summary::before { content: '▼ '; } " <>
                 "details { margin-bottom: 10px; } " <>
                 ".iteration-view { display: none; } " <>
                 ".iteration-view.active { display: block; } " <>
                 ".footer-controls { position: fixed; bottom: 0; left: 0; right: 0; background: #fff; padding: 20px; border-top: 1px solid #ddd; display: flex; align-items: center; justify-content: center; z-index: 1000; box-shadow: 0 -2px 10px rgba(0,0,0,0.1); } " <>
                 ".iteration-slider { width: 400px; margin: 0 20px; } " <>
                 ".iteration-label { font-weight: bold; width: 150px; text-align: center; }"
        script_ $ T.unlines
                [ "let currentIteration = 0;"
                , "const totalIterations = " <> T.pack (show $ length systems) <> ";"
                , "function highlightAddr(id) {"
                , "  const el = document.getElementById(id);"
                , "  if (el) {"
                , "    const all = document.querySelectorAll('.highlight');"
                , "    all.forEach(x => x.classList.remove('highlight'));"
                , "    el.classList.add('highlight');"
                , "    el.scrollIntoView({ behavior: 'smooth', block: 'center' });"
                , "  }"
                , "}"
                , "function setAllDetails(open) {"
                , "  const details = document.querySelectorAll('.iteration-view.active details');"
                , "  details.forEach(d => d.open = open);"
                , "}"
                , "function showIteration(idx) {"
                , "  const prevIter = document.querySelector('.iteration-view.active');"
                , "  const openIds = [];"
                , "  if (prevIter) {"
                , "    prevIter.querySelectorAll('details[open]').forEach(d => openIds.push(d.dataset.id));"
                , "    prevIter.classList.remove('active');"
                , "  }"
                , "  currentIteration = parseInt(idx);"
                , "  const nextIter = document.getElementById('iteration-' + currentIteration);"
                , "  nextIter.classList.add('active');"
                , "  openIds.forEach(id => {"
                , "    const d = nextIter.querySelector(`details[data-id=\"${id}\"]`);"
                , "    if (d) d.open = true;"
                , "  });"
                , "  document.getElementById('slider').value = currentIteration;"
                , "  document.getElementById('iter-label').innerText = 'Iteration: ' + currentIteration;"
                , "}"
                , "window.onload = () => { showIteration(0); };"
                ]
    body_ $ do
        h1_ "PureActor Trace Visualization"
        
        div_ [class_ "controls"] $ do
            button_ [class_ "btn", onclick_ "setAllDetails(true)"] "Expand All"
            button_ [class_ "btn", onclick_ "setAllDetails(false)"] "Collapse All"

        forM_ (zip [0 :: Int ..] systems) $ \(i, sys) -> 
            div_ [id_ ("iteration-" <> T.pack (show i)), class_ "iteration-view"] $ do
                h2_ $ "Iteration " <> toHtml (show i :: Text)
                
                h3_ "Global Shared Store"
                div_ [class_ "store"] $ do
                    renderStore (sys ^. storeSys)
                
                h3_ "Current Mailboxes"
                div_ [class_ "mailboxes"] $ do
                    renderMailboxes (sys ^. mailboxes)
                
                h3_ "Actor Hierarchy & Reachable Turns"
                div_ [class_ "system-tree"] $ do
                    ul_ $ renderTreeNode (systemToTree sys)

        div_ [class_ "footer-controls"] $ do
            button_ [class_ "btn", onclick_ "if(currentIteration > 0) showIteration(currentIteration - 1)"] "Previous"
            input_ [type_ "range", id_ "slider", class_ "iteration-slider", min_ "0", max_ (T.pack $ show (length systems - 1)), step_ "1", oninput_ "showIteration(this.value)"]
            button_ [class_ "btn", onclick_ "if(currentIteration < totalIterations - 1) showIteration(currentIteration + 1)"] "Next"
            span_ [id_ "iter-label", class_ "iteration-label"] $ "Iteration: 0"

renderMailboxes :: Map ActorRef MB -> Html ()
renderMailboxes mbs = ul_ $ forM_ (Map.toList mbs) $ \(ref, mb) -> li_ $ do
    span_ [class_ "actor"] $ toHtml (show ref :: Text)
    div_ [class_ "details"] $ do
        renderMailboxGraph mb

renderMailboxGraph :: MB -> Html ()
renderMailboxGraph g = div_ [class_ "mailbox-graph"] $ do
    if Set.null (vertices g)
        then i_ "Empty Mailbox"
        else do
            div_ $ do
                b_ "Nodes: "
                div_ $ forM_ (Set.toList $ vertices g) $ \v -> 
                    span_ [class_ $ "graph-node " <> nodeClass v] $ renderMsg v
            unless (Map.null $ edges g) $ div_ [style_ "margin-top: 10px;"] $ do
                b_ "Edges: "
                ul_ $ forM_ (Map.toList $ edges g) $ \(src, tgts) -> 
                    forM_ (Set.toList tgts) $ \tgt -> li_ $ do
                        span_ [class_ "graph-node"] $ renderMsg src
                        span_ [class_ "graph-edge"] "→"
                        span_ [class_ "graph-node"] $ renderMsg tgt
  where
    nodeClass v = 
        let isTop = Set.member v (tops g)
            isBottom = Set.member v (bottoms g)
        in case (isTop, isBottom) of
            (True, True) -> "top-bottom-node"
            (True, False) -> "top-node"
            (False, True) -> "bottom-node"
            (False, False) -> ""
    
    renderMsg :: (Tag, Val) -> Html ()
    renderMsg (Tag t, val) = do
        span_ [class_ "graph-tag"] $ toHtml (fromString t :: Text)
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
    details_ [data_ "id" (T.pack $ show ref)] $ do
        summary_ $ span_ [class_ "actor"] $ toHtml (show ref :: Text)
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
        renderS "Inbox Graph" s

renderTurn (Terminated s) = do
    div_ [class_ "terminated"] "Terminated"
    div_ [class_ "details"] $ renderS "Final Inbox Graph" s

renderS :: Text -> S -> Html ()
renderS inboxLabel s = do
    p_ $ toHtml inboxLabel <> ":"
    renderMailboxGraph (s ^. inbox)
    unless (Map.null (s ^. outbox)) $ do
        p_ "Outbox Graphs:"
        ul_ $ forM_ (Map.toList (s ^. outbox)) $ \(target, mb) -> li_ $ do
            b_ $ toHtml (show target :: Text)
            renderMailboxGraph mb
    unless (Map.null (s ^. spawned)) $ do
        p_ "Spawned during turn:"
        ul_ $ forM_ (Map.keys (s ^. spawned)) $ \targetRef -> li_ $ toHtml (show targetRef :: Text)

renderEnv :: Env -> Html ()
renderEnv e = table_ [class_ "env-table"] $ do
    forM_ (Map.toList e) $ \(name, adr) -> tr_ $ do
        td_ $ toHtml (fromString name :: Text)
        td_ $ a_ [class_ "adr-link", onclick_ ("highlightAddr('" <> addrId adr <> "')"), href_ "javascript:void(0)"] $ toHtml (show adr :: Text)

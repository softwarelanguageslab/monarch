module LSP(run) where

import Control.Monad.IO.Class
import Data.Text qualified as T
import Language.LSP.Protocol.Lens hiding (publishDiagnostics, options)
import Language.LSP.Protocol.Message
import Language.LSP.Protocol.Types
import Language.LSP.Server
import Analysis qualified as A
import Relude.Extra.Lens
import Relude.Unsafe (fromJust)
import Language.LSP.Diagnostics (partitionBySource)
import Language.LSP.VFS

-------------------------------
-- Analysis results processing
-------------------------------

analysisResultToDiagnostic :: A.AnalysisResult -> [Diagnostic]
analysisResultToDiagnostic = undefined

-------------------------------
-- LSP handlers
-------------------------------

handlers :: Handlers (LspM ())
handlers =
  mconcat
    [ notificationHandler SMethod_Initialized $ \_not -> do
        pure ()
    , notificationHandler SMethod_TextDocumentDidChange $ \notification -> do
        let uri' =  notification ^. params . textDocument . uri
        mdoc <- getVirtualFile (toNormalizedUri uri')
        case mdoc of
          Just vf@(VirtualFile {}) ->
            let contents = virtualFileText vf
                analysisResults = A.analyze (show uri') (T.unpack contents)
                diagnostics = analysisResultToDiagnostic $ fromJust analysisResults
            in  publishDiagnostics (Prelude.length diagnostics)
                                   (toNormalizedUri uri')
                                   Nothing
                                   (partitionBySource diagnostics)

    ]

-------------------------------
-- Running the Language Server
-------------------------------

lspOptions :: Options
lspOptions = defaultOptions {
    optTextDocumentSync =
            Just $ TextDocumentSyncOptions (Just False)
                                           (Just TextDocumentSyncKind_Full)
                                           Nothing
                                           Nothing
                                           Nothing
  }

run :: IO ()
run =
  void $ runServer $
    ServerDefinition
      { parseConfig = const $ const $ Right ()
      , onConfigChange = const $ pure ()
      , defaultConfig = ()
      , configSection = "monarch-python"
      , doInitialize = \env _req -> pure $ Right env
      , staticHandlers = const handlers
      , interpretHandler = \env -> Iso (runLspT env) liftIO
      , options = lspOptions
      }



{-# LANGUAGE RecordWildCards #-}

module LSP (run) where

import Analysis qualified as A
import Control.Monad.IO.Class
import Data.Map.Lazy qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as T
import Language.LSP.Diagnostics (partitionBySource)
import Language.LSP.Protocol.Lens hiding (options, publishDiagnostics)
import Language.LSP.Protocol.Message
import Language.LSP.Protocol.Types
import Language.LSP.Server
import Language.LSP.VFS
import Relude.Extra.Lens
import Relude.Unsafe (fromJust)
import Syntax.Python qualified as Py
import qualified Language.Python.Common as Py

-------------------------------
-- Analysis results processing
-------------------------------

-- | Transform a Python location (span) to an LSP range
pyLocToRange :: Py.PyLoc -> Maybe Range
pyLocToRange (Py.PyLoc span _) =
  case span of
      Py.SpanCoLinear {..} -> Just $ Range (Position (fromIntegral $ span_row - 1) (fromIntegral $ span_start_column - 1))
                                           (Position (fromIntegral $ span_row -1) (fromIntegral $ span_end_column - 1))
      Py.SpanMultiLine {..} -> Just $ Range (Position (fromIntegral $ span_start_row - 1) (fromIntegral $ span_start_column - 1))
                                            (Position (fromIntegral $ span_end_row - 1) (fromIntegral $ span_end_column  - 1))
      Py.SpanPoint {..} ->  let point = Position (fromIntegral $ span_row - 1) (fromIntegral $ span_column - 1)
                            in Just $ Range point point
      Py.SpanEmpty -> Nothing


analysisResultToDiagnostic :: Range -> A.AnalysisResult -> [Diagnostic]
analysisResultToDiagnostic defaultRange A.AnalysisResult {..} =
  foldMap toDiagnostic (Map.toList $ fmap Set.toList messagePerLine)
  where
    toDiagnostic (location, messages) = map (messageToDiagnostic location) messages
    messageToDiagnostic location message =
      Diagnostic
        { _range = fromMaybe defaultRange $ pyLocToRange location,
          _severity = Nothing,
          _code = Nothing,
          _codeDescription = Nothing,
          _source = Just diagnosticsSource,
          _message = T.pack message,
          _relatedInformation = Nothing,
          _tags = Nothing,
          _data_ = Nothing
        }

-------------------------------
-- LSP handlers
-------------------------------

diagnosticsSource :: Text
diagnosticsSource = "Monarch"

-- | Get the whole program range for a given document
getWholeProgramRange :: Text  -> Range
getWholeProgramRange contents =
        if contents == ""
        then
          Range (Position 0 0) (Position 0 0)
        else
          let lineCount = T.count "\n" contents
              lastLineLength = T.length $ fromJust $ viaNonEmpty last $ T.lines contents
           in Range (Position 0 0) (Position (fromIntegral lineCount) (fromIntegral lastLineLength))


analyzeAndPublish :: NormalizedUri -> Text -> LspM () ()
analyzeAndPublish uri' contents  = do
      flushDiagnosticsBySource 0 (Just diagnosticsSource)
      forM_ diagnostics (publishDiagnostics 1 uri' Nothing . partitionBySource)
    where analysisResults = A.analyze (T.unpack $ getUri $ fromNormalizedUri uri') (T.unpack contents)
          diagnostics     = analysisResultToDiagnostic (getWholeProgramRange contents) <$> analysisResults


handlers :: Handlers (LspM ())
handlers =
  mconcat
    [ notificationHandler SMethod_Initialized $ \_not -> do
        pure (),
      notificationHandler SMethod_TextDocumentDidOpen $ \notification -> do
        let contents = notification ^. params . textDocument . text
        let uri'     = toNormalizedUri $ notification ^. params . textDocument . uri
        analyzeAndPublish uri' contents,
      notificationHandler SMethod_TextDocumentDidSave $ \notification -> do
        let contents = notification ^. params .  text
        let uri'     = toNormalizedUri $ notification ^. params . textDocument . uri
        forM_ contents (analyzeAndPublish uri'),
      notificationHandler SMethod_WorkspaceDidChangeConfiguration $ const $ return (),
      notificationHandler SMethod_TextDocumentDidChange $ \notification -> do
        let uri' = notification ^. params . textDocument . uri
        mdoc <- getVirtualFile (toNormalizedUri uri')
        case mdoc of
          Just vf@(VirtualFile {}) ->
            let contents = virtualFileText vf
            in analyzeAndPublish (toNormalizedUri uri') contents
          Nothing ->
              sendNotification SMethod_WindowShowMessage (ShowMessageParams MessageType_Error (T.pack $ "file at " ++ T.unpack (getUri uri') ++ " not found by the LSP"))
    ]

-------------------------------
-- Running the Language Server
-------------------------------

lspOptions :: Options
lspOptions =
  defaultOptions
    { optTextDocumentSync =
        Just $
          TextDocumentSyncOptions
            (Just True)
            (Just TextDocumentSyncKind_Full)
            (Just False)
            (Just False)
            (Just . InR . SaveOptions $ Just True)
    }

run :: IO ()
run =
  void $
    runServer $
      ServerDefinition
        { parseConfig = const $ const $ Right (),
          onConfigChange = const $ pure (),
          defaultConfig = (),
          configSection = "monarch-python",
          doInitialize = \env _req -> pure $ Right env,
          staticHandlers = const handlers,
          interpretHandler = \env -> Iso (runLspT env) liftIO,
          options = lspOptions
        }

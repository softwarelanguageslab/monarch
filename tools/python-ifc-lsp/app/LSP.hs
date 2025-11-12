{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}

module LSP (run) where

import Data.Proxy (Proxy(..))

import Analysis qualified as A
import Control.Monad.IO.Class
import Data.Map.Lazy qualified as Map
import Data.Set qualified as Set
import Data.Text qualified as T
import Language.LSP.Diagnostics (partitionBySource)
import Language.LSP.Protocol.Lens hiding (options, publishDiagnostics)
import Language.LSP.Protocol.Lens qualified as L
import Language.LSP.Protocol.Message
import Language.LSP.Protocol.Types
import Language.LSP.Server
import Language.LSP.VFS
import Relude.Extra.Lens
import Relude.Unsafe (fromJust)
import Syntax.Python qualified as Py
import qualified Language.Python.Common as Py
import Data.Aeson (FromJSON, ToJSON, object, (.=), (.:))
import Data.Aeson qualified as Aeson
import Syntax.Span (Span(..))
import Syntax.Span qualified as Span

-------------------------------
-- Analysis results processing
-------------------------------

-- Custom LSP command for getting influenced lines
data GetInfluencedLinesParams = GetInfluencedLinesParams
  { textDocumentUri :: Uri
  , position :: Position
  } deriving (Show, Eq)

instance FromJSON GetInfluencedLinesParams where
  parseJSON = Aeson.withObject "GetInfluencedLinesParams" $ \o -> do
    textDocumentUri <- o .: "textDocumentUri"
    position <- o .: "position"
    return GetInfluencedLinesParams{..}

instance ToJSON GetInfluencedLinesParams where
  toJSON GetInfluencedLinesParams{..} =
    object ["textDocumentUri" .= textDocumentUri, "position" .= position]

-- Response containing the influenced lines
data SpanInfo = SpanInfo
  { startLine :: Int
  , startColumn :: Int
  , endLine :: Int
  , endColumn :: Int
  } deriving (Show, Eq)

instance ToJSON SpanInfo where
  toJSON SpanInfo{..} =
    object
      [ "startLine" .= startLine
      , "startColumn" .= startColumn
      , "endLine" .= endLine
      , "endColumn" .= endColumn
      ]

newtype InfluencedLinesResponse = InfluencedLinesResponse
  { influencedSpans :: [SpanInfo] } deriving (Show, Eq)

instance ToJSON InfluencedLinesResponse where
  toJSON InfluencedLinesResponse{..} =
    object ["influencedSpans" .= influencedSpans]

-- Convert a Syntax.Span to SpanInfo
spanToSpanInfo :: Span -> SpanInfo
spanToSpanInfo Span{..} =
  SpanInfo
    { startLine = Span.line startPosition
    , startColumn = Span.column startPosition
    , endLine = Span.line endPosition
    , endColumn = Span.column endPosition
    }

-- Check if an LSP Position is within a Syntax.Span
positionInSpan :: Language.LSP.Protocol.Types.Position -> Span -> Bool
positionInSpan (Language.LSP.Protocol.Types.Position lspLine lspCol) Span{..} =
  let line' = fromIntegral lspLine + 1  -- Convert to 1-indexed
      col' = fromIntegral lspCol + 1    -- Convert to 1-indexed
      startL = Span.line startPosition
      startC = Span.column startPosition
      endL = Span.line endPosition
      endC = Span.column endPosition
  in (startL < line' || (startL == line' && startC <= col'))
       && (endL > line' || (endL == line' && endC >= col'))

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

-- Handler for getting influenced lines at a specific position
handleGetInfluencedLines :: GetInfluencedLinesParams -> LspM () (Either (TResponseError (Method_CustomMethod "monarch/getInfluencedLines")) Aeson.Value)
handleGetInfluencedLines GetInfluencedLinesParams{..} = do
  let uri' = toNormalizedUri textDocumentUri
  mdoc <- getVirtualFile uri'
  case mdoc of
    Just vf@(VirtualFile {}) -> do
      let contents = virtualFileText vf
      let filename = T.unpack $ getUri textDocumentUri
      let analysisResults = A.analyze filename (T.unpack contents)
      case analysisResults of
        Just A.AnalysisResult{..} -> do
          -- Find all spans that contain the current position
          let matchingSpans = Map.filterWithKey (\span _ -> positionInSpan position span) influencedLines
          -- Collect all influenced spans
          let allInfluenced = Set.unions (Map.elems matchingSpans)
          let spanInfos = map spanToSpanInfo $ Set.toList allInfluenced
          return $ Right $ Aeson.toJSON $ InfluencedLinesResponse spanInfos
        Nothing ->
          return $ Left $ TResponseError (InR ErrorCodes_ParseError) "Failed to parse or analyze file" Nothing
    Nothing ->
      return $ Left $ TResponseError (InR ErrorCodes_InternalError) "File not found" Nothing

-- Handler for code actions
handleCodeAction :: TRequestMessage 'Method_TextDocumentCodeAction -> LspM () (Either (TResponseError 'Method_TextDocumentCodeAction) (MessageResult 'Method_TextDocumentCodeAction))
handleCodeAction req = do
  let params' = req ^. L.params
  let uri' = params' ^. textDocument . uri
  let range' = params' ^. range
  let context' = params' ^. context

  -- Check if there are any diagnostics from our source in the context
  let ourDiagnostics = filter (\d -> d ^. source == Just diagnosticsSource) (context' ^. diagnostics)

  if null ourDiagnostics
    then return $ Right $ InL []
    else do
      -- Create a code action to highlight influenced lines using direct construction
      let cmd = Command "Show influenced lines" "monarch.showInfluencedLines" (Just [Aeson.toJSON uri', Aeson.toJSON (range' ^. L.start)])
      let codeAction = CodeAction
            { _title = "Show influenced lines"
            , _kind = Just (CodeActionKind_Custom "monarch.showInfluencedLines")
            , _diagnostics = Just ourDiagnostics
            , _isPreferred = Just False
            , _disabled = Nothing
            , _edit = Nothing
            , _command = Just cmd
            , _data_ = Nothing
            }
      return $ Right $ InL [InR codeAction]


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
              sendNotification SMethod_WindowShowMessage (ShowMessageParams MessageType_Error (T.pack $ "file at " ++ T.unpack (getUri uri') ++ " not found by the LSP")),
      -- Custom command handler for getting influenced lines
      requestHandler (SMethod_CustomMethod (Proxy :: Proxy "monarch/getInfluencedLines")) $ \req responder -> do
        let paramsValue = req ^. L.params
        case Aeson.fromJSON paramsValue of
          Aeson.Success params' -> do
            result <- handleGetInfluencedLines params'
            responder result
          Aeson.Error err ->
            responder $ Left $ TResponseError (InR ErrorCodes_InvalidParams) (T.pack err) Nothing,
      -- Code action handler
      requestHandler SMethod_TextDocumentCodeAction $ \req responder -> do
        result <- handleCodeAction req
        responder result
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
            (Just . InR . SaveOptions $ Just True),
      optCodeActionKinds = Just [CodeActionKind_Custom "monarch.showInfluencedLines"]
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

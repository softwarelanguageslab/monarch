module Options(FileOptions(..)) where 

-- | Options related to input files
data FileOptions = FileOptions {
      filename :: String
   } deriving (Ord, Eq, Show)


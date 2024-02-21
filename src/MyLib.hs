module MyLib (someFunc, readMarkdown') where

import Data.Text.IO qualified as Text.IO
import Text.Pandoc (PandocError, def)
import Text.Pandoc.Class (runIO)
import Text.Pandoc.Definition (Pandoc (..))
import Text.Pandoc.Extensions (pandocExtensions)
import Text.Pandoc.Options (ReaderOptions (..))
import Text.Pandoc.Readers.Markdown (readMarkdown)

path :: FilePath
path = "test.slet"

readMarkdown' :: IO Pandoc
readMarkdown' = do
  text <- Text.IO.readFile path
  liftedE $ runIO $ readMarkdown def [(path, text)]

liftedE :: (Show e) => IO (Either e a) -> IO a
liftedE =
  ( >>=
      ( \case
          Left e -> error $ show e
          Right a -> pure a
      )
  )

someFunc :: IO ()
someFunc = putStrLn "someFunc"

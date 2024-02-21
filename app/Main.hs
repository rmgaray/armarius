module Main where

import MyLib qualified (readMarkdown')
import Text.Pretty.Simple (pPrint)

main :: IO ()
main = do
  pPrint =<< MyLib.readMarkdown'

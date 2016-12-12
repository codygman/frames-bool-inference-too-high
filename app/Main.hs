{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TemplateHaskell #-}
module Main where

import Frames
import Frames.CSV
import Pipes
import qualified Pipes.Prelude as P

tableTypes' rowGen "wrongboolinference.csv"

rowStream :: Producer Row IO ()
rowStream = readTableOpt rowParser "wrongboolinference.csv"

main :: IO ()
main = undefined

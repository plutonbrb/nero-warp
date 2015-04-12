module Nero.Warp
  ( serve
  ) where

import Network.Wai.Handler.Warp (Port, run)
import Nero.Application (Server(application))
import Nero.Wai (waify)

serve :: Server a => Port -> a -> IO ()
serve p = run p . waify . application

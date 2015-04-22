module Nero.Warp
  (
  -- * Warp serve
    serve
  ) where

import Network.Wai.Handler.Warp (Port, run)
import Nero.Application (Application, Server(..))
import Nero.Wai (waify)

-- | Run a @Nero@ 'Nero.Application' with @Warp@ on the given port.
serve :: Server c => Port -> Application c -> IO ()
serve p = run p . waify . server

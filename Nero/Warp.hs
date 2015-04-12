module Nero.Warp
  (
  -- * Warp serve
    serve
  ) where

import Network.Wai.Handler.Warp (Port, run)
import Nero.Application (Server(application))
import Nero.Wai (waify)

-- | Run a @Nero@ 'Nero.Application' with @Warp@ on the given port.
serve :: Server a => Port -> a -> IO ()
serve p = run p . waify . application

# Nero Warp

> A thin wrapper around [`nero-wai`][nero-wai] and [`warp`][warp] for running [`Nero`][nero]
> server applications.

[![Hackage Version](https://img.shields.io/hackage/v/nero-warp.svg)](https://hackage.haskell.org/package/nero-warp) [![Build Status](https://img.shields.io/travis/plutonbrb/nero-warp.svg)](https://travis-ci.org/plutonbrb/nero-warp)

## Example

```haskell
import Nero.Warp (serve)
import Nero (ok)

main :: IO ()
main = serve 8080 $ ok "<h1>Hello there</h1>"
```
[nero]: https://github.com/plutonbrb/nero
[nero-wai]: https://github.com/plutonbrb/nero-wai
[warp]: http://www.stackage.org/package/warp

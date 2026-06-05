# ePSF.jl

[![CI](https://github.com/Alarion239/ePSF.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/Alarion239/ePSF.jl/actions/workflows/CI.yml)
[![License: BSD-3-Clause](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](LICENSE)

**Effective Point Spread Function (ePSF) extraction for Julia.**

`ePSF.jl` ports and extends the ePSF tooling from
[photutils](https://photutils.readthedocs.io/en/stable/user_guide/epsf.html)
into the [JuliaAstro](https://juliaastro.org/) ecosystem, aiming to leverage
Julia's performance and composable package ecosystem (FITS I/O, image handling,
interpolation, optimization, units, and automatic differentiation).

The effective PSF is an empirical, oversampled model of the instrumental PSF,
built by iteratively extracting star cutouts, recentering them, and stacking
them — following Anderson & King (2000) as implemented in photutils.

> ⚠️ **Status: early development.** This is currently a package scaffold. The
> public API is not yet stable and functionality is being ported incrementally.

## Installation

Until the package is registered in the Julia General registry, install directly
from GitHub:

```julia
using Pkg
Pkg.add(url="https://github.com/Alarion239/ePSF.jl")
```

## Roadmap

Replicating the photutils ePSF workflow, roughly in order:

- [ ] Star cutout extraction (`extract_stars` equivalent) with WCS support
- [ ] `EPSFStar` / `EPSFStars` container types
- [ ] Oversampled ePSF model representation
- [ ] Recentering & smoothing kernels
- [ ] `EPSFBuilder` — iterative ePSF construction loop
- [ ] PSF photometry / fitting against the built ePSF
- [ ] Tight integration with JuliaAstro: `FITSIO`, `AstroImages`,
      `Photometry`, `Interpolations`, `Unitful`

## Relationship to photutils

`ePSF.jl` is a derivative work of photutils' ePSF module and is distributed
under the same BSD 3-Clause license. See [LICENSE](LICENSE) for the retained
photutils copyright notice.

## Contributing

Issues and pull requests are welcome. Run the test suite with:

```julia
using Pkg
Pkg.test("ePSF")
```

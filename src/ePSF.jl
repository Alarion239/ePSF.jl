"""
    ePSF

A Julia package for building effective Point Spread Functions (ePSFs) from
astronomical images, replicating and extending the functionality of
[photutils](https://photutils.readthedocs.io/)'s `photutils.psf` ePSF tools
within the [JuliaAstro](https://juliaastro.org/) ecosystem.

The effective PSF (ePSF) is an empirical, oversampled model of the instrumental
PSF built by iteratively stacking and recentering many star cutouts, following
the prescription of Anderson & King (2000) as implemented in photutils.

This is an early-stage scaffold; the public API will grow as functionality is
ported. See the project README for the development roadmap.
"""
module ePSF

# Package version, read from the loaded project metadata (Base, Julia ≥ 1.9).
const PACKAGE_VERSION = pkgversion(@__MODULE__)

"""
    greet()

Return a short greeting confirming the package loaded. Placeholder used by the
initial test suite; will be removed once real functionality lands.
"""
greet() = "ePSF.jl v$(PACKAGE_VERSION) — effective PSF extraction for Julia"

export greet

end # module ePSF

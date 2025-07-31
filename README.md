# SymbolConverters.jl

[![CI](https://github.com/DarrylGamroth/SymbolConverters.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/DarrylGamroth/SymbolConverters.jl/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/DarrylGamroth/SymbolConverters.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/DarrylGamroth/SymbolConverters.jl)

SymbolConverters.jl is a Julia package designed to convert a `Symbol` to an `AbstractString` without allocations.

## Installation

To install SymbolConverters.jl, use the following command in the Julia REPL:

```julia
using Pkg
Pkg.add("SymbolConverters")
```

## Usage

Here's a simple example of how to use SymbolConverters.jl:

```julia
using SymbolConverters

symbol = :example
abstract_string = convert(AbstractString, symbol)

println(abstract_string)  # Output: "example"
```

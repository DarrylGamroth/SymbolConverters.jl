using SymbolConverters
using Test

@testset "SymbolConverters.jl" begin
    @testset "symbol_to_unsafearray" begin
        s = :hello
        arr = SymbolConverters.symbol_to_unsafearray(s)
        @test length(arr) == 5
        @test arr[1] == UInt8('h')
        @test arr[2] == UInt8('e')
        @test arr[3] == UInt8('l')
        @test arr[4] == UInt8('l')
        @test arr[5] == UInt8('o')
    end

    @testset "convert Symbol to AbstractString" begin
        s = :world
        str = convert(String, s)
        @test str == "world"
        @test typeof(str) <: AbstractString
        
        # Test with empty symbol
        empty_s = Symbol("")
        empty_str = convert(String, empty_s)
        @test empty_str == ""
        
        # Test with symbol containing special characters
        special_s = :hello_world123
        special_str = convert(String, special_s)
        @test special_str == "hello_world123"
    end
end

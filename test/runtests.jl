using ePSF
using Test

@testset "ePSF.jl" begin
    @testset "smoke" begin
        @test ePSF.greet() isa String
        @test occursin("ePSF.jl", ePSF.greet())
    end
end

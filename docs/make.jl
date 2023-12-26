using JuliaLLMLeaderboard
using PromptingTools
using Documenter
using SparseArrays, LinearAlgebra
using PromptingTools.Experimental.RAGTools
using JSON3, Serialization, DataFramesMeta
using Statistics: mean

DocMeta.setdocmeta!(JuliaLLMLeaderboard,
    :DocTestSetup,
    :(using JuliaLLMLeaderboard);
    recursive = true)

# Convert .jl scripts to markdown
include("generate_examples.jl")

makedocs(;
    modules = [JuliaLLMLeaderboard],
    authors = "J S <49557684+svilupp@users.noreply.github.com> and contributors",
    repo = "https://github.com/svilupp/JuliaLLMLeaderboard.jl/blob/{commit}{path}#{line}",
    sitename = "JuliaLLMLeaderboard.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        repolink = "https://github.com/svilupp/JuliaLLMLeaderboard.jl",
        canonical = "https://svilupp.github.io/JuliaLLMLeaderboard.jl",
        edit_link = "main",
        assets = String[]),
    pages = [
        "Home" => "index.md",
        "Getting Started" => "getting_started.md",
        "Results" => [
            "Paid APIs" => "examples/example1.md",
        ],
        "F.A.Q." => "frequently_asked_questions.md",
        "Reference" => "reference.md",
    ])

deploydocs(;
    repo = "github.com/svilupp/JuliaLLMLeaderboard.jl",
    devbranch = "main")

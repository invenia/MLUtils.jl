module MLUtils

using Random
using Statistics
using ShowCases: ShowLimit
using FLoops: @floop
using FLoops.Transducers: Executor
using FoldsThreads: TaskPoolEx
import StatsBase: sample
using Base: @propagate_inbounds
using Random: AbstractRNG, shuffle!, GLOBAL_RNG
import ChainRulesCore: rrule
using ChainRulesCore: @non_differentiable, unthunk, AbstractZero,
                      NoTangent, ZeroTangent, ProjectTo


include("observation.jl")
export numobs,
       getobs,
       getobs!

include("obstransform.jl")
export mapobs,
       filterobs,
       groupobs,
       joinobs

include("batchview.jl")
export batchsize,
       BatchView

include("dataiterator.jl")
export eachobs,
       eachbatch

include("parallel.jl")
export eachobsparallel

include("dataloader.jl")
export DataLoader

include("folds.jl")
export kfolds,
       leavepout

include("obsview.jl")
export obsview,
       ObsView

include("randobs.jl")
export randobs

include("resample.jl")
export labelmap,
       oversample,
       undersample

include("splitobs.jl")
export splitobs

include("utils.jl")
export batch,
       batchseq,
       chunk,
       flatten,
       group_counts,
       group_indices,
       normalise,
       stack,
       unbatch,
       unsqueeze,
       unstack
       # rpad

include("Datasets/Datasets.jl")
using .Datasets
export Datasets,
       load_iris

include("deprecations.jl")

end

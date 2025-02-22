module SymbolConverters

using StringViews
using UnsafeArrays

function symbol_to_unsafearray(s::Symbol)
    p = Base.unsafe_convert(Ptr{UInt8}, s)
    len = @ccall strlen(p::Ptr{UInt8})::Csize_t
    UnsafeArray(p, (unsafe_trunc(Int64, len),))
end

Base.convert(::Type{T}, s::Symbol) where {T<:AbstractString} = StringView(symbol_to_unsafearray(s))

end # module SymbolConverters

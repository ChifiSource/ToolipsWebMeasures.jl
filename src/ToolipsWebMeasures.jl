module ToolipsWebMeasures
import Base: *

mutable struct WebMeasure{format} end

*(i::Any, p::WebMeasure{<:Any}) = "$(i)$(typeof(p[1]).parameters[1])"
# size
const px = WebMeasure{:px}()
const pt = WebMeasure{:pt}()
const in = WebMeasure{:in}()
const pc = WebMeasure{:pc}()
const mm = WebMeasure{:mm}()
const cm = WebMeasure{:cm}()
# relative size
const percent = WebMeasure{:%}()
const per = WebMeasure{:%}()
const em = WebMeasure{:em}()
# time
const seconds = WebMeasure{:seconds}()
const s = WebMeasure{:seconds}()
const ms = WebMeasure{:ms}()
# angles
const deg = WebMeasure{:deg}()
const turn = WebMeasure{:turn}()
# colors and transforms
rgba(r::Number, g::Number, b::Number, a::Float64) = "rgb($r $g $b $a / a)"
translateX(s::String) = "translateX($s)"
translateY(s::String) = "translateX($s)"
rotate(s::String) = "rotate($s)"
matrix(n::Int64 ...) "matrix(" * join([string(i) for i in n], ", ") * ")"
translate(x::String, y::String) = "translate()"
skew(one::String, two::String) = "skew($one, $two)"
scale(n::Any, n2::Any) = "scale($one, $two)"

export px, pt, per, s, ms, deg, turn, 
export rgba, translate, matrix, skew, rotate, scale
end # module ToolipsWebMeasures

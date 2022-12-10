module Stay : sig
  type t = { name : string; days : int }
end

val randomize : Stay.t list -> unit

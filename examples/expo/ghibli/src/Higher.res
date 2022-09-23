module type StarToStar = {
  type t<'a>
}

module Tree = (F: StarToStar) => {
  type f<'a>
  type rec tree<'a> = Leaf('a) | Node(f<tree<'a>>)
  let mk_node_pair = (node_a: tree<'a>, node_b: tree<'a>) => (node_a, node_b)

  let sum_leafs = (node_a: tree<'a>, node_b: tree<'a>) =>
    switch (node_a, node_b) {
    | (Leaf(a), Leaf(b)) => a + b
    | _ => 0
    }
}

module type TreeLike = {
  type f<'a>
  type rec tree<'a> = Leaf('a) | Node(f<tree<'a>>)
}

module RoseTree = Tree({
  type t<'a> = list<'a>
})

module BinTree = Tree({
  type t<'a> = ('a, 'a)
})

module AnnTree = Tree({
  type t<'a> = (string, 'a, 'a)
})

let sas = (_x, x) =>
  switch x {
  | RoseTree.Leaf(x) => "Leaf of" ++ x
  | RoseTree.Node(_s) => ""
  }

let _r = RoseTree.sum_leafs(RoseTree.Leaf(1), RoseTree.Leaf(0))
/* let _ = print_string (RoseTree.string_of_tree (RoseTree.Node [])) */
/* module RoseTree : sig type 'a t = Leaf of 'a | Node of 'a t list end
   module BinTree : sig type 'a t = Leaf of 'a | Node of ('a t * 'a t) end
   module AnnTree : sig type 'a t = Leaf of 'a | Node of (string * 'a t * 'a t) end */
module type Monoid = {
  type t

  let e: t
  let concat: (t, t) => t
}

module Integers = {
  type t = int

  let e = 0
  let concat = \"+"
}

module List = {
  type t = list<int>
  let e = list{}
  let concat = Belt.List.concat
}

let fold = (type a, module(M: Monoid with type t = a), ls) => Belt.List.reduce(ls, M.e, M.concat)

let _ = fold(module(Integers), list{1, 2})
let _ = fold(module(List), list{list{1}, list{}})

let mconcat = (type a, module(M: Monoid with type t = a), y, x) => M.concat(y, x)

module type GROUP = {
  type t

  let zero: t
  let add: (t, t) => t
  let neg: t => t
}

module type RING = {
  include GROUP

  let one: t
  let mul: (t, t) => t
}

module type FIELD = {
  include RING

  let inv: t => t
}

module type VECTOR_SPACE = {
  module V: GROUP
  module S: FIELD

  type vector = V.t
  type scalar = S.t

  let scale: (scalar, vector) => vector
}

module type NUM = {
  type t

  let from_int: int => t
  let \"+": (t, t) => t
}

type num_impl<'a> = module(NUM with type t = 'a)

module Num_int: NUM with type t = int = {
  type t = int

  let from_int = x => x
  let \"+" = \"+"
}

let num_int = module(Num_int: NUM with type t = int)
/*
      module Num_bool : NUM with type t = bool = struct
        type t = bool

        let from_int = function 0 -> false | _ -> true
        let ( + ) = function true -> fun _ -> true | false -> fun x -> x
      end

      let num_bool = (module Num_bool : NUM with type t = bool) */

let concat = (type a, num, ls) => {
  module Num = unpack(num: NUM with type t = a)
  Belt.List.reduce(ls, Num.from_int(0))
}

let test_concat = concat(num_int, list{1, 2, 3, 4})
type rec t<'a> =
  | T1(bool): t<bool>
  | T2: t<'a>

/* type 'a t' = T1 of bool | T2 of 'a t' */
let f:
  type a. (t<a>, a) => a =
  (x, y) =>
    switch x {
    | T1(_) => true
    | T2 => y
    }

let r = f(T2, true)

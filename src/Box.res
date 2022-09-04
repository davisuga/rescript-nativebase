module Binding = {
  @obj
  type opts = {
    code: string,
    tariffCode: option<string>,
    city: string,
    cityCode: option<string>,
    address: string,
    pickupPointCode: option<string>,
    comment: string,
  }

  @module("native-base")
  external make: 'a => React.element = "Box"

  let makeProps = Obj.magic
}
include Binding
module Delivery = {
  type t = React.element

  @obj
  type opts = {
    code: string,
    city: string,
    cityCode: option<string>,
    address: string,
    pickupPointCode: option<string>,
    comment: string,
  }

  let make: opts => t = _ => <h1 />
}

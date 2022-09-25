module Binding = {
  @module("native-base") @react.component
  external make: (
    ~\"in": bool=?,
    ~duration: int=?,
    ~placement: [#top | #bottom | #left | #right],
  ) => React.element = "Slide"
}
include Binding

module Binding = {
  @module("native-base") @react.component
  external make: (
    ~\"in": boolean=?,
    ~duration: integer=?,
    ~placement: [#top | #bottom | #left | #right],
  ) => React.element = "Slide"
}
include Binding

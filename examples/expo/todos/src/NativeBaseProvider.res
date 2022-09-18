module Binding = {
  @module("native-base") @react.component
  external make: (~children: React.element, ~theme: Theme.t) => React.element = "NativeBaseProvider"
}
include Binding
module Theme = {
  let basePadding = CssJs.px(5)
  let textColor = CssJs.black
}

module Binding = {
  @module("native-base") @react.component
  external make: (~children: React.element, ~theme: Theme.t=?) => React.element =
    "NativeBaseProvider"
}
include Binding

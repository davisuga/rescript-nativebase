module Binding = {
  @module("native-base") @react.component
  external make: (~children: React.element) => React.element = "NativeBaseProvider"
}
include Binding

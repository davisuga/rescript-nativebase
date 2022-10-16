module Binding = {
  @module("native-base") @react.component
  external make: (
    ~variant: string=?,
    ~children: React.element,
    ~theme: Theme.t=?,
  ) => React.element = "NativeBaseProvider"
}
include Binding

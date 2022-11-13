type t
type toastRef
type showOptions = {
  title?: string,
  description?: string,
  duration?: int,
  position?: string,
  _title?: Utilitary.props,
  _description?: Utilitary.props,
  render?: Js.Json.t => React.element,
  onCloseComplete?: unit => unit,
  placement?: @string
  [
    | #top
    | @as("top-right") #topRright
    | @as("top-left") #topLeft
    | #bottom
    | @as("bottomLeft") #bottomLeft
    | @as("bottom-right") #bottomRight
  ],
}
@send
external show: (t, showOptions) => toastRef = "show"

@send external hide: (t, ~id: string=?, unit) => unit = "hide"
@send external closeAll: t => unit = "closeAll"
@send external isActive: (t, ~id: string=?) => bool = "isActive"
@send external close: (t, ~id: string=?) => bool = "close"

@module("native-base") external useToast: unit => t = "useToast"
@val external t: t = "r"
module Actions = {
  @module("native-base") @scope("Toast")
  external show: showOptions => toastRef = "show"
}

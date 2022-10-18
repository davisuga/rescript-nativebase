%%raw("//@ts-check")
module Binding = {
  @module("native-base") @react.component
  external make: a => React.element = "Toast"
  // (
  //   ~m: string=?,
  //   ~margin: string=?,
  //   ~mt: string=?,
  //   ~marginTop: string=?,
  //   ~mr: string=?,
  //   ~marginRight: string=?,
  //   ~mb: string=?,
  //   ~marginBottom: string=?,
  //   ~ml: string=?,
  //   ~marginLeft: string=?,
  //   ~mx: string=?,
  //   ~my: string=?,
  //   ~p: string=?,
  //   ~padding: string=?,
  //   ~pt: string=?,
  //   ~paddingTop: string=?,
  //   ~pr: string=?,
  //   ~paddingRight: string=?,
  //   ~pb: string=?,
  //   ~paddingBottom: string=?,
  //   ~pl: string=?,
  //   ~paddingLeft: string=?,
  //   ~px: string=?,
  //   ~py: string=?,
  //   ~color: string=?,
  //   ~bg: string=?,
  //   ~background: string=?,
  //   ~bgColor: string=?,
  //   ~opacity: string=?,
  //   ~fontFamily: string=?,
  //   ~fontSize: string=?,
  //   ~fontWeight: string=?,
  //   ~lineHeight: string=?,
  //   ~letterSpacing: string=?,
  //   ~textAlign: string=?,
  //   ~fontStyle: string=?,
  //   ~textTransform: string=?,
  //   ~textDecoration: string=?,
  //   ~w: string=?,
  //   ~width: string=?,
  //   ~h: string=?,
  //   ~height: string=?,
  //   ~minW: string=?,
  //   ~minWidth: string=?,
  //   ~maxW: string=?,
  //   ~maxWidth: string=?,
  //   ~minH: string=?,
  //   ~minHeight: string=?,
  //   ~maxH: string=?,
  //   ~maxHeight: string=?,
  //   ~d: string=?,
  //   ~display: string=?,
  //   ~boxSize: string=?,
  //   ~verticalAlign: string=?,
  //   ~overflow: string=?,
  //   ~overflowX: string=?,
  //   ~overflowY: string=?,
  //   ~alignItems: string=?,
  //   ~align: string=?,
  //   ~alignContent: string=?,
  //   ~justifyItems: string=?,
  //   ~justifyContent: string=?,
  //   ~justify: string=?,
  //   ~flexWrap: string=?,
  //   ~wrap: string=?,
  //   ~flexDirection: string=?,
  //   ~flexDir: string=?,
  //   ~direction: string=?,
  //   ~flex: string=?,
  //   ~flexGrow: string=?,
  //   ~flexShrink: string=?,
  //   ~flexBasis: string=?,
  //   ~justifySelf: string=?,
  //   ~alignSelf: string=?,
  //   ~order: string=?,
  //   ~borderWidth: string=?,
  //   ~borderStyle: string=?,
  //   ~borderColor: string=?,
  //   ~borderTop: string=?,
  //   ~borderTopWidth: string=?,
  //   ~borderTopStyle: string=?,
  //   ~borderTopColor: string=?,
  //   ~borderRight: string=?,
  //   ~borderRightWidth: string=?,
  //   ~borderRightStyle: string=?,
  //   ~borderRightColor: string=?,
  //   ~borderBottom: string=?,
  //   ~borderBottomWidth: string=?,
  //   ~borderBottomStyle: string=?,
  //   ~borderBottomColor: string=?,
  //   ~borderLeft: string=?,
  //   ~borderLeftWidth: string=?,
  //   ~borderLeftStyle: string=?,
  //   ~borderLeftColor: string=?,
  //   ~borderRadius: string=?,
  //   ~rounded: string=?,
  //   ~borderTopLeftRadius: string=?,
  //   ~roundedTopLeft: string=?,
  //   ~borderTopRightRadius: string=?,
  //   ~roundedTopRight: string=?,
  //   ~borderBottomRightRadius: string=?,
  //   ~roundedBottomRight: string=?,
  //   ~borderBottomLeftRadius: string=?,
  //   ~roundedBottomLeft: string=?,
  //   ~borderTopRadius: string=?,
  //   ~roundedTop: string=?,
  //   ~borderRightRadius: string=?,
  //   ~roundedRight: string=?,
  //   ~borderBottomRadius: string=?,
  //   ~roundedBottom: string=?,
  //   ~borderLeftRadius: string=?,
  //   ~roundedLeft: string=?,
  //   ~pos: string=?,
  //   ~position: string=?,
  //   ~zIndex: string=?,
  //   ~top: string=?,
  //   ~right: string=?,
  //   ~bottom: string=?,
  //   ~left: string=?,
  //   ~shadow: string=?,
  //   // React props
  //   ~children: React.element=?,
  //   ~style: ReactNative.Style.t=?,
  //   // Platform props
  //   ~_ios: Utilitary.props=?,
  //   ~_android: Utilitary.props=?,
  //   ~_web: Utilitary.props=?,
  // )
}
include Binding

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
module Toast = {
  @module("native-base") @scope("Toast")
  external show: showOptions => toastRef = "show"
}

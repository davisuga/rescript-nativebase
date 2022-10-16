external customVarint: string => [#filled | #outline | #rounded | #underlined | #unstyled] =
  "%identity"

module Binding = {
  open ReactNative
  open TextInput

  @module("native-base") @react.component
  external make: (
    //NativeBase input props
    ~isChecked: bool=?,
    ~size: [#lg | #md | #sm]=?,
    ~variant: [#filled | #outline | #rounded | #underlined | #unstyled]=?,
    // Utilitary props
    ~m: string=?,
    ~margin: string=?,
    ~mt: string=?,
    ~marginTop: string=?,
    ~mr: string=?,
    ~marginRight: string=?,
    ~mb: string=?,
    ~marginBottom: string=?,
    ~ml: string=?,
    ~marginLeft: string=?,
    ~mx: string=?,
    ~my: string=?,
    ~p: string=?,
    ~padding: string=?,
    ~pt: string=?,
    ~paddingTop: string=?,
    ~pr: string=?,
    ~paddingRight: string=?,
    ~pb: string=?,
    ~paddingBottom: string=?,
    ~pl: string=?,
    ~paddingLeft: string=?,
    ~px: string=?,
    ~py: string=?,
    ~color: string=?,
    ~bg: string=?,
    ~background: string=?,
    ~bgColor: string=?,
    ~opacity: string=?,
    ~fontFamily: string=?,
    ~fontSize: string=?,
    ~fontWeight: string=?,
    ~lineHeight: string=?,
    ~letterSpacing: string=?,
    ~textAlign: string=?,
    ~fontStyle: string=?,
    ~textTransform: string=?,
    ~textDecoration: string=?,
    ~w: string=?,
    ~width: string=?,
    ~h: string=?,
    ~height: string=?,
    ~minW: string=?,
    ~minWidth: string=?,
    ~maxW: string=?,
    ~maxWidth: string=?,
    ~minH: string=?,
    ~minHeight: string=?,
    ~maxH: string=?,
    ~maxHeight: string=?,
    ~d: string=?,
    ~display: string=?,
    ~boxSize: string=?,
    ~verticalAlign: string=?,
    ~overflow: string=?,
    ~overflowX: string=?,
    ~overflowY: string=?,
    ~alignItems: string=?,
    ~align: string=?,
    ~alignContent: string=?,
    ~justifyItems: string=?,
    ~justifyContent: string=?,
    ~justify: string=?,
    ~flexWrap: string=?,
    ~wrap: string=?,
    ~flexDirection: string=?,
    ~flexDir: string=?,
    ~direction: string=?,
    ~flex: string=?,
    ~flexGrow: string=?,
    ~flexShrink: string=?,
    ~flexBasis: string=?,
    ~justifySelf: string=?,
    ~alignSelf: string=?,
    ~order: string=?,
    ~borderWidth: string=?,
    ~borderStyle: string=?,
    ~borderColor: string=?,
    ~borderTop: string=?,
    ~borderTopWidth: string=?,
    ~borderTopStyle: string=?,
    ~borderTopColor: string=?,
    ~borderRight: string=?,
    ~borderRightWidth: string=?,
    ~borderRightStyle: string=?,
    ~borderRightColor: string=?,
    ~borderBottom: string=?,
    ~borderBottomWidth: string=?,
    ~borderBottomStyle: string=?,
    ~borderBottomColor: string=?,
    ~borderLeft: string=?,
    ~borderLeftWidth: string=?,
    ~borderLeftStyle: string=?,
    ~borderLeftColor: string=?,
    ~borderRadius: string=?,
    ~rounded: string=?,
    ~borderTopLeftRadius: string=?,
    ~roundedTopLeft: string=?,
    ~borderTopRightRadius: string=?,
    ~roundedTopRight: string=?,
    ~borderBottomRightRadius: string=?,
    ~roundedBottomRight: string=?,
    ~borderBottomLeftRadius: string=?,
    ~roundedBottomLeft: string=?,
    ~borderTopRadius: string=?,
    ~roundedTop: string=?,
    ~borderRightRadius: string=?,
    ~roundedRight: string=?,
    ~borderBottomRadius: string=?,
    ~roundedBottom: string=?,
    ~borderLeftRadius: string=?,
    ~roundedLeft: string=?,
    ~pos: string=?,
    ~position: string=?,
    ~zIndex: string=?,
    ~top: string=?,
    ~right: string=?,
    ~bottom: string=?,
    ~left: string=?,
    ~shadow: string=?,
    // React props
    ~children: React.element=?,
    ~style: ReactNative.Style.t=?,
    // RN Input Options
    ~ref: ref=?,
    // TextInput props
    ~allowFontScaling: bool=?,
    ~autoCapitalize: autoCapitalize=?,
    ~autoComplete: autoComplete=?,
    ~autoCorrect: bool=?,
    ~autoFocus: bool=?,
    ~blurOnSubmit: bool=?,
    ~caretHidden: bool=?,
    ~clearButtonMode: @string
    [
      | #never
      | @as("while-editing") #whileEditing
      | @as("unless-editing") #unlessEditing
      | #always
    ]=?,
    ~clearTextOnFocus: bool=?,
    ~contextMenuHidden: bool=?,
    ~defaultValue: string=?,
    ~disableFullscreenUI: bool=?,
    ~editable: bool=?,
    ~enablesReturnKeyAutomatically: bool=?,
    ~importantForAutofill: importantForAutofill=?,
    ~inlineImageLeft: string=?,
    ~inlineImagePadding: float=?,
    ~inputAccessoryViewID: string=?,
    ~keyboardAppearance: keyboardAppearance=?,
    ~keyboardType: @string
    [
      | #default
      | @as("number-pad") #numberPad
      | @as("decimal-pad") #decimalPad
      | #numeric
      | @as("email-address") #emailAddress
      | @as("phone-pad") #phonePad
      | @as("ascii-capable") #asciiCapable
      | @as("numbers-and-punctuation") #numbersAndPunctuation
      | #url
      | @as("name-phone-pad") #namePhonePad
      | #twitter
      | @as("web-search") #webSearch
      | @as("visible-password") #visiblePassword
    ]=?,
    ~maxFontSizeMultiplier: float=?,
    ~maxLength: int=?,
    ~multiline: bool=?,
    ~numberOfLines: int=?,
    ~onBlur: Event.targetEvent => unit=?,
    ~onChange: bool => unit=?,
    ~onContentSizeChange: contentSizeChangeEvent => unit=?,
    ~onEndEditing: editingEvent => unit=?,
    ~onFocus: Event.targetEvent => unit=?,
    ~onKeyPress: keyPressEvent => unit=?,
    ~onPressIn: Event.pressEvent => bool=?,
    ~onPressOut: Event.pressEvent => bool=?,
    ~onScroll: scrollEvent => unit=?,
    ~onSelectionChange: selectionChangeEvent => unit=?,
    ~onSubmitEditing: editingEvent => unit=?,
    ~placeholder: string=?,
    ~placeholderTextColor: Color.t=?,
    ~returnKeyLabel: string=?,
    ~returnKeyType: @string
    [
      | @as("done") #done_
      | #go
      | #next
      | #search
      | #send
      | #none
      | #previous
      | #default
      | @as("emergency-call") #emergencyCall
      | #google
      | #join
      | #route
      | #yahoo
    ]=?,
    ~rejectResponderTermination: bool=?,
    ~scrollEnabled: bool=?,
    ~secureTextEntry: bool=?,
    ~selection: selection=?,
    ~selectionColor: Color.t=?,
    ~selectTextOnFocus: bool=?,
    ~showSoftInputOnFocus: bool=?,
    ~spellCheck: bool=?,
    ~textBreakStrategy: textBreakStrategy=?,
    ~textContentType: textContentType=?,
    ~underlineColorAndroid: Color.t=?,
    ~value: string=?,
    // rescript-react-native 0.68 View props
    ~accessibilityActions: array<Accessibility.actionInfo>=?,
    ~accessibilityElementsHidden: bool=?,
    ~accessibilityHint: string=?,
    ~accessibilityIgnoresInvertColors: bool=?,
    ~accessibilityLabel: string=?,
    ~accessibilityLabelledBy: array<string>=?,
    ~accessibilityLiveRegion: Accessibility.liveRegion=?,
    ~accessibilityRole: Accessibility.role=?,
    ~accessibilityState: Accessibility.state=?,
    ~accessibilityValue: Accessibility.value=?,
    ~accessibilityViewIsModal: bool=?,
    ~accessible: bool=?,
    ~collapsable: bool=?,
    ~hitSlop: View.edgeInsets=?,
    ~importantForAccessibility: @string
    [
      | #auto
      | #yes
      | #no
      | @as("no-hide-descendants") #noHideDescendants
    ]=?,
    ~nativeID: string=?,
    ~needsOffscreenAlphaCompositing: bool=?,
    ~onAccessibilityAction: Accessibility.actionEvent => unit=?,
    ~onAccessibilityEscape: unit => unit=?,
    ~onAccessibilityTap: unit => unit=?,
    ~onLayout: Event.layoutEvent => unit=?,
    ~onMagicTap: unit => unit=?,
    // Gesture Responder props
    ~onMoveShouldSetResponder: Event.pressEvent => bool=?,
    ~onMoveShouldSetResponderCapture: Event.pressEvent => bool=?,
    ~onResponderEnd: Event.pressEvent => unit=?,
    ~onResponderGrant: Event.pressEvent => unit=?,
    ~onResponderMove: Event.pressEvent => unit=?,
    ~onResponderReject: Event.pressEvent => unit=?,
    ~onResponderRelease: Event.pressEvent => unit=?,
    ~onResponderStart: Event.pressEvent => unit=?,
    ~onResponderTerminate: Event.pressEvent => unit=?,
    ~onResponderTerminationRequest: Event.pressEvent => bool=?,
    ~onStartShouldSetResponder: Event.pressEvent => bool=?,
    ~onStartShouldSetResponderCapture: Event.pressEvent => bool=?,
    ~pointerEvents: @string
    [
      | #auto
      | #none
      | @as("box-none") #boxNone
      | @as("box-only") #boxOnly
    ]=?,
    ~removeClippedSubviews: bool=?,
    ~renderToHardwareTextureAndroid: bool=?,
    ~shouldRasterizeIOS: bool=?,
    ~style: Style.t=?,
    ~testID: string=?,
    ~children: React.element=?,
    // react-native-web 0.16 View props
    ~href: string=?,
    ~hrefAttrs: Web.hrefAttrs=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onMouseMove: ReactEvent.Mouse.t => unit=?,
    ~onMouseOver: ReactEvent.Mouse.t => unit=?,
    ~onMouseOut: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
    // ~onSubmitEditing: Event.submitEditingEvent => unit=?,
    // Platform props
    ~_ios: Utilitary.props=?,
    ~_android: Utilitary.props=?,
    ~_web: Utilitary.props=?,
  ) => React.element = "Checkbox"
}
include Binding
let e = <Binding variant={customVarint("sas")} />

@module("native-base") @react.component
external make: (
  // ~_android: 'a=?,
  ~_backdrop: 'a=?,
  ~_backdropFade: 'a=?,
  ~_dark: 'a=?,
  ~_fade: 'a=?,
  ~_important: 'a=?,
  // ~_ios: 'a=?,
  ~_light: 'a=?,
  ~_overlay: 'a=?,
  ~_slide: 'a=?,
  ~_text: 'a=?,
  // ~_web: 'a=?,
  ~accessibilityActions: 'a=?,
  ~accessibilityElementsHidden: 'a=?,
  ~accessibilityHint: 'a=?,
  ~accessibilityIgnoresInvertColors: 'a=?,
  ~accessibilityLabel: 'a=?,
  ~accessibilityLiveRegion: 'a=?,
  ~accessibilityRole: 'a=?,
  ~accessibilityState: 'a=?,
  ~accessibilityValue: 'a=?,
  ~accessibilityViewIsModal: 'a=?,
  ~accessible: 'a=?,
  ~alignContent: 'a=?,
  ~alignItems: 'a=?,
  ~alignSelf: 'a=?,
  ~animationPreset: 'a=?,
  ~avoidKeyboard: 'a=?,
  ~backdropVisible: 'a=?,
  ~background: 'a=?,
  ~backgroundColor: 'a=?,
  ~bg: 'a=?,
  ~bgColor: 'a=?,
  ~borderBottomColor: 'a=?,
  ~borderBottomLeftRadius: 'a=?,
  ~borderBottomRadius: 'a=?,
  ~borderBottomRightRadius: 'a=?,
  ~borderBottomStyle: 'a=?,
  ~borderBottomWidth: 'a=?,
  ~borderColor: 'a=?,
  ~borderLeftColor: 'a=?,
  ~borderLeftRadius: 'a=?,
  ~borderLeftStyle: 'a=?,
  ~borderLeftWidth: 'a=?,
  ~borderRadius: 'a=?,
  ~borderRightColor: 'a=?,
  ~borderRightRadius: 'a=?,
  ~borderRightStyle: 'a=?,
  ~borderRightWidth: 'a=?,
  ~borderStyle: 'a=?,
  ~borderTopColor: 'a=?,
  ~borderTopLeftRadius: 'a=?,
  ~borderTopRadius: 'a=?,
  ~borderTopRightRadius: 'a=?,
  ~borderTopStyle: 'a=?,
  ~borderTopWidth: 'a=?,
  ~borderWidth: 'a=?,
  ~borderX: 'a=?,
  ~borderY: 'a=?,
  ~bottom: 'a=?,
  ~boxSize: 'a=?,
  ~closeOnOverlayClick: 'a=?,
  ~collapsable: 'a=?,
  ~color: 'a=?,
  ~defaultIsOpen: 'a=?,
  ~display: 'a=?,
  ~finalFocusRef: 'a=?,
  ~flex: 'a=?,
  ~flexBasis: 'a=?,
  ~flexDir: 'a=?,
  ~flexDirection: 'a=?,
  ~flexGrow: 'a=?,
  ~flexShrink: 'a=?,
  ~flexWrap: 'a=?,
  ~focusable: 'a=?,
  ~fontFamily: 'a=?,
  ~fontSize: 'a=?,
  ~fontStyle: 'a=?,
  ~fontWeight: 'a=?,
  ~h: 'a=?,
  ~hasTVPreferredFocus: 'a=?,
  ~height: 'a=?,
  ~hitSlop: 'a=?,
  ~importantForAccessibility: 'a=?,
  ~initialFocusRef: 'a=?,
  ~isKeyboardDismissable: 'a=?,
  ~isOpen: 'a=?,
  ~isTVSelectable: 'a=?,
  ~justifyContent: 'a=?,
  ~justifyItems: 'a=?,
  ~left: 'a=?,
  ~letterSpacing: 'a=?,
  ~lineHeight: 'a=?,
  ~m: 'a=?,
  ~margin: 'a=?,
  ~marginBottom: 'a=?,
  ~marginLeft: 'a=?,
  ~marginRight: 'a=?,
  ~marginTop: 'a=?,
  ~marginX: 'a=?,
  ~marginY: 'a=?,
  ~maxH: 'a=?,
  ~maxHeight: 'a=?,
  ~maxW: 'a=?,
  ~maxWidth: 'a=?,
  ~mb: 'a=?,
  ~minH: 'a=?,
  ~minHeight: 'a=?,
  ~minW: 'a=?,
  ~minWidth: 'a=?,
  ~ml: 'a=?,
  ~mr: 'a=?,
  ~mt: 'a=?,
  ~mx: 'a=?,
  ~my: 'a=?,
  ~nativeID: 'a=?,
  ~needsOffscreenAlphaCompositing: 'a=?,
  ~onAccessibilityAction: 'a=?,
  ~onAccessibilityEscape: 'a=?,
  ~onAccessibilityTap: 'a=?,
  ~onClose: 'a=?,
  ~onLayout: 'a=?,
  ~onMagicTap: 'a=?,
  ~onMoveShouldSetResponder: 'a=?,
  ~onMoveShouldSetResponderCapture: 'a=?,
  ~onResponderEnd: 'a=?,
  ~onResponderGrant: 'a=?,
  ~onResponderMove: 'a=?,
  ~onResponderReject: 'a=?,
  ~onResponderRelease: 'a=?,
  ~onResponderStart: 'a=?,
  ~onResponderTerminate: 'a=?,
  ~onResponderTerminationRequest: 'a=?,
  ~onStartShouldSetResponder: 'a=?,
  ~onStartShouldSetResponderCapture: 'a=?,
  ~onTouchCancel: 'a=?,
  ~onTouchEnd: 'a=?,
  ~onTouchEndCapture: 'a=?,
  ~onTouchMove: 'a=?,
  ~onTouchStart: 'a=?,
  ~opacity: 'a=?,
  ~outlineColor: 'a=?,
  ~outlineStyle: 'a=?,
  ~overflow: 'a=?,
  ~overflowX: 'a=?,
  ~overflowY: 'a=?,
  ~overlayVisible: 'a=?,
  ~p: 'a=?,
  ~padding: 'a=?,
  ~paddingBottom: 'a=?,
  ~paddingLeft: 'a=?,
  ~paddingRight: 'a=?,
  ~paddingTop: 'a=?,
  ~paddingX: 'a=?,
  ~paddingY: 'a=?,
  ~pb: 'a=?,
  ~pl: 'a=?,
  ~pointerEvents: 'a=?,
  ~position: 'a=?,
  ~pr: 'a=?,
  ~pt: 'a=?,
  ~px: 'a=?,
  ~py: 'a=?,
  ~ref: 'a=?,
  ~removeClippedSubviews: 'a=?,
  ~renderToHardwareTextureAndroid: 'a=?,
  ~right: 'a=?,
  ~rounded: 'a=?,
  ~roundedBottom: 'a=?,
  ~roundedBottomLeft: 'a=?,
  ~roundedBottomRight: 'a=?,
  ~roundedLeft: 'a=?,
  ~roundedRight: 'a=?,
  ~roundedTop: 'a=?,
  ~roundedTopLeft: 'a=?,
  ~roundedTopRight: 'a=?,
  ~safeArea: 'a=?,
  ~safeAreaBottom: 'a=?,
  ~safeAreaLeft: 'a=?,
  ~safeAreaRight: 'a=?,
  ~safeAreaTop: 'a=?,
  ~safeAreaX: 'a=?,
  ~safeAreaY: 'a=?,
  ~shadow: 'a=?,
  ~shouldRasterizeIOS: 'a=?,
  ~size: 'a=?,
  // ~style: 'a=?,
  ~testID: 'a=?,
  ~textAlign: 'a=?,
  ~textDecoration: 'a=?,
  ~textDecorationColor: 'a=?,
  ~textDecorationLine: 'a=?,
  ~textTransform: 'a=?,
  ~tintColor: 'a=?,
  ~top: 'a=?,
  ~tvParallaxMagnification: 'a=?,
  ~tvParallaxProperties: 'a=?,
  ~tvParallaxShiftDistanceX: 'a=?,
  ~tvParallaxShiftDistanceY: 'a=?,
  ~tvParallaxTiltAngle: 'a=?,
  ~txtDecor: 'a=?,
  ~useRNModal: 'a=?,
  ~w: 'a=?,
  ~width: 'a=?,
  ~zIndex: 'a=?,
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
  // Platform props
  ~_ios: Utilitary.props=?,
  ~_android: Utilitary.props=?,
  ~_web: Utilitary.props=?,
) => React.element = "Modal"

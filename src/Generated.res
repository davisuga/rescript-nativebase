module Hidden = {
  @module("native-base") @react.component
  external make: (
    ~children: 'a=?,
    ~colorMode: 'a=?,
    ~from: 'a=?,
    ~only: 'a=?,
    ~platform: 'a=?,
    ~till: 'a=?,
  ) => React.element = "Hidden"
}

module Overlay = {
  @module("native-base") @react.component
  external make: (
    ~animationPreset: 'a=?,
    ~children: 'a=?,
    ~isKeyboardDismissable: 'a=?,
    ~isOpen: 'a=?,
    ~onRequestClose: 'a=?,
    ~style: 'a=?,
    ~unmountOnExit: 'a=?,
    ~useRNModal: 'a=?,
    ~useRNModalOnAndroid: 'a=?,
  ) => React.element = "Overlay"
}

module Accordion = {
  @module("native-base") @react.component
  external make: (
    ~_android: 'a=?,
    ~_dark: 'a=?,
    ~_important: 'a=?,
    ~_ios: 'a=?,
    ~_light: 'a=?,
    ~_text: 'a=?,
    ~_web: 'a=?,
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
    ~allowMultiple: 'a=?,
    ~allowToggle: 'a=?,
    ~animateOpacity: 'a=?,
    ~background: 'a=?,
    ~backgroundColor: 'a=?,
    ~bg: 'a=?,
    ~bgColor: 'a=?,
    ~children: 'a=?,
    ~collapsable: 'a=?,
    ~defaultIndex: 'a=?,
    ~duration: 'a=?,
    ~endingHeight: 'a=?,
    ~focusable: 'a=?,
    ~hasTVPreferredFocus: 'a=?,
    ~hitSlop: 'a=?,
    ~importantForAccessibility: 'a=?,
    ~index: 'a=?,
    ~isOpen: 'a=?,
    ~isTVSelectable: 'a=?,
    ~nativeID: 'a=?,
    ~needsOffscreenAlphaCompositing: 'a=?,
    ~onAccessibilityAction: 'a=?,
    ~onAccessibilityEscape: 'a=?,
    ~onAccessibilityTap: 'a=?,
    ~onAnimationEnd: 'a=?,
    ~onAnimationStart: 'a=?,
    ~onChange: 'a=?,
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
    ~pointerEvents: 'a=?,
    ~ref: 'a=?,
    ~removeClippedSubviews: 'a=?,
    ~renderToHardwareTextureAndroid: 'a=?,
    ~safeArea: 'a=?,
    ~safeAreaBottom: 'a=?,
    ~safeAreaLeft: 'a=?,
    ~safeAreaRight: 'a=?,
    ~safeAreaTop: 'a=?,
    ~safeAreaX: 'a=?,
    ~safeAreaY: 'a=?,
    ~shouldRasterizeIOS: 'a=?,
    ~startingHeight: 'a=?,
    ~style: 'a=?,
    ~testID: 'a=?,
    ~tvParallaxMagnification: 'a=?,
    ~tvParallaxProperties: 'a=?,
    ~tvParallaxShiftDistanceX: 'a=?,
    ~tvParallaxShiftDistanceY: 'a=?,
    ~tvParallaxTiltAngle: 'a=?,
  ) => React.element = "Accordion"
}

module Stagger = {
  @module("native-base") @react.component
  external make: (
    ~animate: 'a=?,
    ~children: 'a=?,
    ~exit: 'a=?,
    ~initial: 'a=?,
    ~visible: 'a=?,
  ) => React.element = "Stagger"
}

module List = {
  @module("native-base") @react.component
  external make: (
    ~_focus: 'a=?,
    ~_hover: 'a=?,
    ~_pressed: 'a=?,
    ~_text: 'a=?,
    ~children: 'a=?,
    ~ol: 'a=?,
    ~ordered: 'a=?,
    ~ref: 'a=?,
    ~start: 'a=?,
    ~ul: 'a=?,
    ~unordered: 'a=?,
  ) => React.element = "List"
}

module Popover = {
  @module("native-base") @react.component
  external make: (
    ~children: 'a=?,
    ~crossOffset: 'a=?,
    ~defaultIsOpen: 'a=?,
    ~finalFocusRef: 'a=?,
    ~initialFocusRef: 'a=?,
    ~isKeyboardDismissable: 'a=?,
    ~isOpen: 'a=?,
    ~offset: 'a=?,
    ~onClose: 'a=?,
    ~onOpen: 'a=?,
    ~placement: 'a=?,
    ~ref: 'a=?,
    ~shouldFlip: 'a=?,
    ~shouldOverlapWithTrigger: 'a=?,
    ~trapFocus: 'a=?,
    ~trigger: 'a=?,
    ~useRNModal: 'a=?,
  ) => React.element = "Popover"
}

module Drawer = {
  @module("native-base") @react.component
  external make: (
    ~children: 'a=?,
    ~isOpen: 'a=?,
    ~onClose: 'a=?,
    ~placement: 'a=?,
  ) => React.element = "Drawer"
}

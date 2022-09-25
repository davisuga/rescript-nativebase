type supportedTransitions = {
  "opacity": int,
  "translateY": int,
  "translateX": int,
  "scale": int,
  "scaleX": int,
  "scaleY": int,
  "rotate": string,
}

type xy = {x: int, y: int}
type transition = {
  "type": [#timing | #spring],
  "easing": float => float,
  "overshootClamping": bool,
  "restDisplacementThreshold": float,
  "restSpeedThreshold": float,
  "velocity": [#just(float) | #xy(xy)],
  "bounciness": float,
  "speed": float,
  "tension": float,
  "friction": float,
  "stiffness": float,
  "mass": float,
  "damping": float,
  "delay": float,
  "duration": float,
  "useNativeDriver": bool,
}
type transitionStyleProps = {...supportedTransitions, "transition": transition}

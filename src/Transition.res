type supportedTransitions = {
  "opacity": integer,
  "translateY": integer,
  "translateX": integer,
  "scale": integer,
  "scaleX": integer,
  "scaleY": integer,
  "rotate": string,
}

type xy = {x: integer, y: integer}
type transition = {
  "type": [#timing | #spring],
  "easing": float => float,
  "overshootClamping": boolean,
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
  "useNativeDriver": boolean,
}
type transitionStyleProps = {...supportedTransitions, "transition": transition}

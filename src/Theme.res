type themeOpts = {
  useSystemColorMode?: bool,
  initialColorMode?: [#dark | #light],
}

type containerSizes = {
  sm?: int,
  md?: int,
  lg?: int,
  xl?: int,
}

type sizes = {
  container: containerSizes,
  \"3xs"?: int,
  \"2xs"?: int,
  xs?: int,
  sm?: int,
  md?: int,
  lg?: int,
  xl?: int,
  \"2xl"?: int,
  px?: string,
  \"0"?: int,
  \"0.5"?: int,
  \"1"?: int,
  \"1.5"?: int,
  \"2"?: int,
  \"2.5"?: int,
  \"3"?: int,
  \"3.5"?: int,
  \"4"?: int,
  \"5"?: int,
  \"6"?: int,
  \"7"?: int,
  \"8"?: int,
  \"9"?: int,
  \"10"?: int,
  \"12"?: int,
  \"16"?: int,
  \"20"?: int,
  \"24"?: int,
  \"32"?: int,
  \"40"?: int,
  \"48"?: int,
  \"56"?: int,
  \"64"?: int,
  \"72"?: int,
  \"80"?: int,
  \"96"?: int,
  \"1/2"?: string,
  \"1/3"?: string,
  \"2/3"?: string,
  \"1/4"?: string,
  \"2/4"?: string,
  \"3/4"?: string,
  \"1/5"?: string,
  \"2/5"?: string,
  \"3/5"?: string,
  \"4/5"?: string,
  \"1/6"?: string,
  \"2/6"?: string,
  \"3/6"?: string,
  \"4/6"?: string,
  \"5/6"?: string,
  full?: string,
}
type space = {
  px?: string,
  \"0"?: int,
  \"0.5"?: int,
  \"1"?: int,
  \"1.5"?: int,
  \"2"?: int,
  \"2.5"?: int,
  \"3"?: int,
  \"3.5"?: int,
  \"4"?: int,
  \"5"?: int,
  \"6"?: int,
  \"7"?: int,
  \"8"?: int,
  \"9"?: int,
  \"10"?: int,
  \"12"?: int,
  \"16"?: int,
  \"20"?: int,
  \"24"?: int,
  \"32"?: int,
  \"40"?: int,
  \"48"?: int,
  \"56"?: int,
  \"64"?: int,
  \"72"?: int,
  \"80"?: int,
  \"96"?: int,
  \"1/2"?: string,
  \"1/3"?: string,
  \"2/3"?: string,
  \"1/4"?: string,
  \"2/4"?: string,
  \"3/4"?: string,
  \"1/5"?: string,
  \"2/5"?: string,
  \"3/5"?: string,
  \"4/5"?: string,
  \"1/6"?: string,
  \"2/6"?: string,
  \"3/6"?: string,
  \"4/6"?: string,
  \"5/6"?: string,
  full?: string,
}
type hue = {
  \"50"?: string,
  \"100"?: string,
  \"200"?: string,
  \"300"?: string,
  \"400"?: string,
  \"500"?: string,
  \"600"?: string,
  \"700"?: string,
  \"800"?: string,
  \"900"?: string,
}

type colors = {
  contrastThreshold?: int,
  white?: string,
  black?: string,
  lightText?: string,
  darkText?: string,
  rose?: hue,
  pink?: hue,
  fuchsia?: hue,
  purple?: hue,
  violet?: hue,
  indigo?: hue,
  blue?: hue,
  lightBlue?: hue,
  darkBlue?: hue,
  cyan?: hue,
  teal?: hue,
  emerald?: hue,
  green?: hue,
  lime?: hue,
  yellow?: hue,
  amber?: hue,
  orange?: hue,
  red?: hue,
  warmGray?: hue,
  trueGray?: hue,
  gray?: hue,
  coolGray?: hue,
  blueGray?: hue,
  dark?: hue,
  text?: hue,
  danger?: hue,
  error?: hue,
  success?: hue,
  warning?: hue,
  muted?: hue,
  primary?: hue,
  info?: hue,
  secondary?: hue,
  light?: hue,
  tertiary?: hue,
}

type fonts = {
  heading?: string,
  body?: string,
  mono?: string,
}

type fontSizes = {
  \"'2xs'"?: int,
  xs?: int,
  sm?: int,
  md?: int,
  lg?: int,
  xl?: int,
  \"'2xl'"?: int,
  \"'3xl'"?: int,
  \"'4xl'"?: int,
  \"'5xl'"?: int,
  \"'6xl'"?: int,
  \"'7xl'"?: int,
  \"'8xl'"?: int,
  \"'9xl'"?: int,
}

type borderWidths = {
  \"'0'"?: int,
  \"'1'"?: string,
  \"'2'"?: string,
  \"'4'"?: string,
  \"'8'"?: string,
}

type breakpoints = {
  base?: int,
  sm?: int,
  md?: int,
  lg?: int,
  xl?: int,
  \"'2xl'"?: int,
}

type t
type baseTheme = {config: themeOpts, sizes: sizes, space: space, colors: colors}
@module("native-base")
external extendTheme: baseTheme => t = "extendTheme"

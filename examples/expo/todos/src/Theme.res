type themeOpts = {
  useSystemColorMode: bool,
  initialColorMode: [#dark | #light],
}

type t

@module("native-base")
external extendTheme: themeOpts => t = "extendTheme"

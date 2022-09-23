let id = x => x
let compose = (g, f, x) => f(g(x))

let s = React.string
let os = str => str->Belt.Option.getWithDefault("")->React.string

module Image = {
  let getSource = str =>
    str
    ->Belt.Option.getWithDefault("")
    ->(uri => ReactNative.Image.uriSource(~uri, ()))
    ->ReactNative.Image.Source.fromUriSource
}

module Array = {
  // Module contents
  include Array
  let optOptArrayToArray = films => films->Belt.Option.getWithDefault([])->Belt.Array.keepMap(id)
}

open Theme
let default = () => {
  let customTheme = Theme.extendTheme({
    components: {
      \"VStack": {
        baseStyle: _ => {
          {
            padding: "1",
          }
        },
        variants: Js.Dict.fromArray([
          (
            "marginBig",
            _ => {
              margin: "1",
            },
          ),
        ]),
      },
    },
  })
  <NativeBaseProvider theme={customTheme}>
    <TodoList />
  </NativeBaseProvider>
}

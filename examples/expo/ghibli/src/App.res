open RescriptNativeBase
let s = React.string

@react.component
let make = () => {
  let theme = Theme.extendTheme({
    config: {initialColorMode: #dark},
  })
  <RescriptRelay.Context.Provider environment=RelayEnv.environment>
    <NativeBaseProvider theme>
      <React.Suspense>
        <Movies />
      </React.Suspense>
    </NativeBaseProvider>
  </RescriptRelay.Context.Provider>
}

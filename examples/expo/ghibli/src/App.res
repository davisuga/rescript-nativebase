open RescriptNativeBase
let s = React.string
@react.component
let make = () => {
  let theme = Theme.extendTheme
  <NativeBaseProvider>
    <Box>
      <Text> {"Hello"->s} </Text>
    </Box>
  </NativeBaseProvider>
}

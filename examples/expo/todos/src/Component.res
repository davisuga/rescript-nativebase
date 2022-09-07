let s = React.string

@react.component
let make = () =>
  <Box m="10" background="primary">
    <ReactNative.Text> {"Hey"->s} </ReactNative.Text>
    <Text color="white"> {"Hey"->s} </Text>
    <Box width="100" height="200" />
  </Box>

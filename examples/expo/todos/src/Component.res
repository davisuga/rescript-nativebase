let s = React.string

@react.component
let make = () =>
  <Box mt="100" h="20" w="40" justifyContent="center" alignItems="center" background="primary.700">
    // <ReactNative.Text> {"Hey"->s} </ReactNative.Text>
    <Text fontWeight="bold" mt="10" color="black"> {"Hey"->s} </Text>
    <Input size=#xl />
    <ReactNative.Text />
  </Box>

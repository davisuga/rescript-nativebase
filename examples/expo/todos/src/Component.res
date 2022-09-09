let s = React.string

@react.component
let make = () =>
  <Box
    _android={m: "3"}
    mt="10"
    h="20"
    w="40"
    justifyContent="center"
    alignItems="center"
    background="primary.700">
    // <ReactNative.Text> {"Hey"->s} </ReactNative.Text>
    <Text fontWeight="bold" color="black"> {"Hey"->s} </Text>
  </Box>

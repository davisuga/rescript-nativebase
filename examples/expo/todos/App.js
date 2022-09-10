//@ts-check
import { StatusBar } from "expo-status-bar";
import * as NativeBase from "native-base";
import { NativeBaseProvider } from "native-base";
import React from "react";
import { make as Component } from "./src/Component.bs";
export default function App() {
  return (
    <NativeBaseProvider>
      <Component />
      <NativeBase.Box
        mt="10"
        h="20"
        w="20"
        justifyContent="center"
        alignItems="center"
        background="primary.700"
      >
        <NativeBase.Text size="" fontWeight="bold" color="black">
          Hey
        </NativeBase.Text>
        <NativeBase.IconButton colorScheme={""} size={""} onPress={(e) => {}} />
      </NativeBase.Box>
      {/* <NativeBase.Input variant={["filled", "rounded"]} ></NativeBase.Input> */}
    </NativeBaseProvider>
  );
}

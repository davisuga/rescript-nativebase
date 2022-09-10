//@ts-check
import { StatusBar } from "expo-status-bar";
import * as NativeBase from "native-base";
import { NativeBaseProvider } from "native-base";
import React from "react";
import { Feather, Entypo } from "@expo/vector-icons";
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
        <NativeBase.Text mt="10" fontWeight="bold" color="black">
          Hey
        </NativeBase.Text>
        <NativeBase.IconButton onPress={(e) => {}} />
      </NativeBase.Box>
      {/* <NativeBase.Icon as={Entypo} name="minus" size="xs" color="trueGray.400" /> */}
      {/* <NativeBase.Checkbox  size=""  /> */}

      {/* <NativeBase.Input variant={["filled", "rounded"]} ></NativeBase.Input> */}
    </NativeBaseProvider>
  );
}

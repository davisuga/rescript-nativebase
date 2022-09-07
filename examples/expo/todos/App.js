//@ts-check
import { StatusBar } from "expo-status-bar";
import * as NativeBase from "native-base";
import { NativeBaseProvider } from "native-base";
import React from "react";
import { make as Component } from "./src/Component.bs";
export default function App() {
  return (
    <NativeBaseProvider>
      <NativeBase.Box h="20" w="20" background="primary.400" />
      <Component />
    </NativeBaseProvider>
  );
}

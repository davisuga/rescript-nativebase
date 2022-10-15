//@ts-check
import { StatusBar } from "expo-status-bar";
import * as NativeBase from "native-base";
import { NativeBaseProvider, useTheme } from "native-base";
import React from "react";
import { Feather, Entypo, MaterialCommunityIcons } from "@expo/vector-icons";
import { make as TodoList } from "./src/TodoList.bs";
// Define the config
const config = {
  useSystemColorMode: false,
  initialColorMode: "dark",
};
type Ab = { a: 1 };
export default function App() {
  const customTheme = NativeBase.extendTheme({ config });
  const theme = useTheme();
  theme;
  return (
    <NativeBaseProvider theme={customTheme}>
      <TodoList />
    </NativeBaseProvider>
  );
}

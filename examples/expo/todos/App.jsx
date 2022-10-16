//@ts-check
import { StatusBar } from "expo-status-bar";
import * as NativeBase from "native-base";
import { NativeBaseProvider, useTheme } from "native-base";
import React from "react";
import { Feather, Entypo, MaterialCommunityIcons } from "@expo/vector-icons";
import TodoList from "./src/App.bs";
// Define the config
const config = {
  useSystemColorMode: false,
  initialColorMode: "dark",
};
export default function App() {
  return <TodoList />;
}

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
export default function App() {
  var customTheme = NativeBase.extendTheme({
    components: {
      VStack: {
        baseStyle: function (param) {
          return {
            // padding: "10",
          };
        },
      },
    },
  });
  return (
    <NativeBaseProvider theme={customTheme}>
      <TodoList />
    </NativeBaseProvider>
  );
}

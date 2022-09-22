//@ts-check
import { StatusBar } from "expo-status-bar";
import * as NativeBase from "native-base";
import { NativeBaseProvider } from "native-base";
import React from "react";
import { Feather, Entypo, MaterialCommunityIcons } from "@expo/vector-icons";
import { make as Component } from "./src/Component.bs";
import { make as TodoList } from "./src/TodoList.bs";
// Define the config
const config = {
  useSystemColorMode: false,
  initialColorMode: "dark",
};

export default function App() {
  const customTheme = NativeBase.extendTheme({ config });

  return (
    <NativeBaseProvider theme={customTheme}>
      <TodoList />
      {/* <NativeBase.Box
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
        <NativeBase.IconButton
          borderRadius="sm"
          variant="solid"
          icon={
            <NativeBase.Icon
              as={MaterialCommunityIcons}
              name="plus"
              size="sm"
              color="warmGray.50"
            />
          }
          onPress={() => {}}
        />{" "}
      </NativeBase.Box>
      <NativeBase.Icon
        as={Entypo}
        name="minus"
        size="xs"
        color="trueGray.400"
      /> */}
      {/* <NativeBase.Checkbox  size=""  /> */}

      {/* <NativeBase.Input
        bg="gray.900"
        variant={["filled", "rounded"]}
      ></NativeBase.Input> */}
    </NativeBaseProvider>
  );
}

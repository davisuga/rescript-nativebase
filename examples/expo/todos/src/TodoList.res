%%raw(`//@ts-check`)

open Utils
open Types

@react.component
let make = () => {
  let (inputText, setInputValue) = React.useState(_ => "")
  let (items, setItems) = React.useState(_ => list{})

  let handleDelete = index =>
    Belt.List.keepWithIndex(items, (_t, i) => i != index)->(l => setItems(_ => l))

  let handleStatusChange = index => {
    List.mapi((itemIndex, item) =>
      itemIndex == index ? {...item, isCompleted: !item.isCompleted} : item
    )->setItems
  }

  let todoElements =
    List.mapi((itemI, item) => <TodoEl handleDelete handleStatusChange item itemI />, items)
    ->Belt.List.toArray
    ->React.array

  <Center flex="1" px="3" bg="gray.900">
    <Box w="80%">
      <Heading color="white" mb="2" size=#md> {"Wednesday"->s} </Heading>
      <VStack space=4>
        <HStack space=2>
          <Input
            flex="1"
            onChangeText={v => setInputValue(_ => v)}
            value={inputText}
            placeholder="Add Task"
          />
          <IconButton
            title="Add a task"
            borderRadius="sm"
            width="12"
            icon={<Icon
              name="plus" size=#md color="warmGray.50" \"as"=Icon.MaterialCommunityIcons.make
            />}
            variant=#solid
            onPress={_ =>
              setItems(oldItems => {
                setInputValue(_ => "")
                List.append(oldItems, list{{content: inputText, isCompleted: false}})
              })}
          />
        </HStack>
        <VStack> todoElements </VStack>
      </VStack>
    </Box>
  </Center>
}

%%raw(`//@ts-check`)

type todo = {content: string, isCompleted: bool}

let s = React.string

module TodoEl = {
  @react.component
  let make = (~item, ~handleStatusChange, ~handleDelete, ~itemI) =>
    <HStack w="100%" justifyContent="space-between" alignItems="center">
      <Checkbox
        isChecked={item.isCompleted} onChange={_ => handleStatusChange(itemI)} value={item.content}>
        {""->s}
      </Checkbox>
      <Text
        width="100%"
        flexShrink="1"
        textAlign="left"
        mx="2"
        strikeThrough=item.isCompleted
        _light={{
          color: item.isCompleted ? "gray.400" : "coolGray.800",
        }}
        _dark={{
          color: item.isCompleted ? "gray.400" : "coolGray.50",
        }}
        onPress={_ => handleStatusChange(itemI)}>
        {item.content->s}
      </Text>
      <IconButton
        size=#sm
        colorScheme=#trueGray
        icon={<Icon
          name="minus" size=#md color="warmGray.50" \"as"=Icon.MaterialCommunityIcons.make
        />}
        onPress={_ => handleDelete(itemI)}
      />
    </HStack>
}

@react.component
let make = () => {
  let (inputText, setInputValue) = React.useState(_ => "")
  let (items, setItems) = React.useState(_ => list{})
  open CssJs
  let card = style(. [
    display(flexBox),
    flexDirection(column),
    alignItems(stretch),
    backgroundColor(white),
    boxShadow(Shadow.box(~y=px(3), ~blur=px(5), rgba(0, 0, 0, #num(0.3)))),
    // You can add non-standard and other unsafe style declarations using the `unsafe` function, with strings as the two arguments
    unsafe("-webkit-overflow-scrolling", "touch"),
    // You can place all your theme styles in Theme.re and access as normal Reason module
    // padding(Theme.basePadding),
  ])

  // let title = style(. [fontSize(rem(1.5)), color(Theme.textColor), marginBottom(Theme.basePadding)])
  Js.log2("HEYYY", card)

  let actionButton = disabled =>
    style(. [
      background(disabled ? darkgray : white),
      color(black),
      border(px(1), solid, black),
      borderRadius(px(3)),
    ])
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
      <Heading mb="2" size=#md> {"Wednesday"->s} </Heading>
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

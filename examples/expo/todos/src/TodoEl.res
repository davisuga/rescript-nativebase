open Types
open RescriptNativeBase
open Utils

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

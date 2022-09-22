open System.IO

let components =
  [
    // AppBar;
    "Alert"
    "AspectRatio"
    "Avatar"
    "Badge"
    "Button"
    "Card"
    "IconButton"
    "Heading"
    "Hidden"
    // "View";
    "Text"
    "Code"
    "Checkbox"
    "Radio"
    "Column"
    "Row"
    "Center"
    "Square"
    "Circle"
    "Box"
    "Stack"
    "VStack"
    "HStack"
    "ZStack"
    "Slider"
    "Icon"
    // "createIcon"
    "Input"
    "InputGroup"
    "InputLeftAddon"
    "InputRightAddon"
    "Spinner"
    "Image"
    "Switch"
    "Flex"
    "Kbd"
    "Breadcrumb"
    "Container"
    "Divider"
    "Link"
    "Overlay"
    "Pressable"
    "Progress"
    "Accordion"
    "Skeleton"
    "FormControl"
    // "Stat";
    "Tag"
    "TextArea"
    "TextField"
    "Wrap"
    "PinInput"
    "Fade"
    "ScaleFade"
    "Slide"
    "SlideFade"
    "PresenceTransition"
    "Stagger"
    "NumberInput"
    "NumberInputField"
    "NumberInputStepper"
    "NumberIncrementStepper"
    "NumberDecrementStepper"
    "Spacer"
    "Collapse"
    "CircularProgress"
    "List"
    "Popover"
    "AlertDialog"
    // "useToast";
    "Menu"
    "SimpleGrid"
    // "Tabs";
    "Actionsheet"
    "Fab"
    "Typeahead"
    // "useTypeahead"
    "Select"
    "Modal"
    "useToast"
    "Toast"
    "Backdrop"
    "Drawer"
    "Tooltip" ]

let processContent (name: string) content = name.Replace("Template", content)

let basePath =
  try
    System.Environment.GetEnvironmentVariable("SRC")
  with
  | _ -> "../../src/"

let createComponentFile componentName =
  let baseContent = File.ReadAllText("../src/Template.res")
  let content = processContent componentName baseContent
  File.WriteAllText(basePath + componentName + ".res", content)

Directory.GetFiles(basePath, "*.res")
|> Array.map Path.GetFileName
|> Array.map (fun x -> x.Replace(".res", ""))
|> Array.filter (fun x -> not (List.contains x components))
|> Array.map createComponentFile
|> ignore

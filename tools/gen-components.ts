import * as NativeBase from "../node_modules/native-base/src/index";

import * as TE from "fp-ts/TaskEither";
// const components = Object.keys(NativeBase.theme.components) as unknown as Array<
//   keyof typeof NativeBase.theme.components
// >;

const components = [
  // AppBar,
  "Alert",
  "AspectRatio",
  "Avatar",
  "Badge",
  "Button",
  "Card",
  "IconButton",
  "Heading",
  "Hidden",
  // "View",
  "Text",
  "Code",
  "Checkbox",
  "Radio",
  "Column",
  "Row",
  "Center",
  "Square",
  "Circle",
  "Box",
  "Stack",
  "VStack",
  "HStack",
  "ZStack",
  "Slider",
  "Icon",
  "createIcon",
  "Input",
  "InputGroup",
  "InputLeftAddon",
  "InputRightAddon",
  "Spinner",
  "Image",
  "Switch",
  "Flex",
  "Kbd",
  "Breadcrumb",
  "Container",
  "Divider",
  "Link",
  "Overlay",
  "Pressable",
  "Progress",
  "Accordion",
  "Skeleton",
  "FormControl",
  // "Stat",
  "Tag",
  "TextArea",
  "TextField",
  "Wrap",
  "PinInput",
  "Fade",
  "ScaleFade",
  "Slide",
  "SlideFade",
  "PresenceTransition",
  "Stagger",
  "NumberInput",
  "NumberInputField",
  "NumberInputStepper",
  "NumberIncrementStepper",
  "NumberDecrementStepper",
  "Spacer",
  "Collapse",
  "CircularProgress",
  "List",
  "Popover",
  "AlertDialog",
  // "useToast",
  "Menu",
  "SimpleGrid",
  // "Tabs",
  "Actionsheet",
  "Fab",
  "Typeahead",
  "useTypeahead",
  "Select",
  "Modal",
  "useToast",
  "Toast",
  "Backdrop",
  "Drawer",
  "Tooltip",
];
import { flow, pipe } from "fp-ts/function";

import * as fs from "fs/promises";
import { filter, map } from "fp-ts/lib/Array";
import { endsWith, replace } from "fp-ts/lib/string";
import { not } from "fp-ts/lib/Predicate";
// import { Dirent } from "fs";
const srcFolder = process.env.SRC || "../src/";

// const createFile = (name: string) =>
//   encaseP((data: string) =>
//     fs.writeFile(srcFolder + name, data, { flag: "wx" }),
//   );
// const readDir: () => FutureInstance<unknown,Dirent[]> = () =>
//   node((done) => fs.readdir(srcFolder, { withFileTypes: true }).then(done));
// readDir().pipe(chain(files => files.map))

fs.readdir(srcFolder, { withFileTypes: true })
  .then((files) =>
    files.filter((file) => file.name.endsWith(".res")).map((file) => file.name),
  )
  .then((createdFiles) => createdFiles);

const processFile = (componentName: string) => (base: string) =>
  pipe(base, replace("Template", componentName));

const includes =
  <T>(arr: Array<T>) =>
  (item: T) =>
    arr.includes(item);

const writeFile = (name: string) => (data: string) =>
  pipe(
    TE.fromTask(() => fs.writeFile(srcFolder + name, data, { flag: "w" })),
    TE.mapLeft((_) => "Failed to create file" as const),
  );

const readFile = (name: string) =>
  pipe(
    TE.fromTask(() => fs.readFile(name)),
    TE.mapLeft((_) => "Failed to read file" as const),
  );

const isCapitalized = (str: string) => str[0] === str[0].toUpperCase();

const createComponents = pipe(
  () => fs.readdir(srcFolder, { withFileTypes: true }),
  TE.fromTask,
  TE.map(
    flow(
      map((f) => f.name),
      filter(endsWith("res")),
      map(replace(".res", "")),
      filter(isCapitalized),
      (components) => {
        updateIndex(components)();
        return components;
      },
      (createdFiles) => components.filter(not(includes(createdFiles))),
      map(async (componentName) => {
        const baseContent = (
          await fs.readFile("../src/Template.res", { encoding: "utf8" })
        ).toString();
        const content = processFile(componentName)(baseContent);
        return writeFile(srcFolder + componentName + ".res")(content);
      }),
    ),
  ),
  // TE.map((tasks) => Promise.all(tasks)),
  TE.mapLeft((e) => "Failed to list files " + e),
);

const join = (separator: string) => (str: string[]) => str.join(separator);
const updateIndex = flow(
  // () => fs.readFile(srcFolder + "RescriptNativeBase.res", { encoding: "utf8" }),
  // TE.fromTask,
  // TE.chain(
  map((componentName) =>
    componentName === "RescriptNativeBase"
      ? ""
      : `module ${componentName} = ${componentName}`,
  ),
  join("\n"),
  writeFile(srcFolder + "RescriptNativeBase.res"),
  //  ),
);
createComponents();
export default 1;

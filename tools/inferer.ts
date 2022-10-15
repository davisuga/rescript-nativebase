import { ITheme } from "native-base/src";
import * as NativeBase from "../node_modules/native-base/lib/typescript/";
import * as NativeBaseComponentsPrimitives from "../node_modules/native-base/lib/typescript/components/primitives/";

export type ExpandDeep<T> = T extends object
  ? T extends infer O
    ? {
        [K in keyof O]: O[K] extends
          | keyof JSX.IntrinsicElements
          | React.JSXElementConstructor<any>
          ? ExpandDeep<React.ComponentProps<O[K]>>
          : ExpandDeep<O[K]>;
      }
    : never
  : T;
type G = typeof NativeBase;
type F = ExpandDeep<G>;
let f: F;
//// f.
const x: G = JSON.parse("");
// x.

// Radio.
let Theme: ITheme
// f.theme.
f.theme.components.
let a = 1

// export const f = () => {
//   const x: F = JSON.parse("");
//   x.Accordion.params0.
//   return x;
// };
const useTheme = NativeBase.useTheme()
useTheme.
type FormControlLabelP = React.ComponentProps<typeof x.FormControl.Label>;
let FormControlLabel: FormControlLabelP;
FormControlLabel.
// f.FormControl.Label.
type AlertP = React.ComponentProps<typeof x.Alert>;
let Alert: AlertP;
f.Alert.
//Alert.

type AspectRatioP = React.ComponentProps<typeof x.AspectRatio>;
let AspectRatio: AspectRatioP;
f.AspectRatio.
// AspectRatio.
type AvatarP = React.ComponentProps<typeof x.Avatar>;
let Avatar: AvatarP;
f.Avatar.
//Avatar.
type BadgeP = React.ComponentProps<typeof x.Badge>;
let Badge: BadgeP;
f.Badge.
//Badge.
type ButtonP = React.ComponentProps<typeof x.Button>;
let Button: ButtonP;
f.Button.
//Button.
type CardP = React.ComponentProps<typeof x.Card>;
let Card: CardP;
f.Card.
//Card.
type IconButtonP = React.ComponentProps<typeof x.IconButton>;
let IconButton: IconButtonP;
f.IconButton.
//IconButton.
type HeadingP = React.ComponentProps<typeof x.Heading>;
let Heading: HeadingP;
f.Heading.
//Heading.
type HiddenP = React.ComponentProps<typeof x.Hidden>;
let Hidden: HiddenP;
f.Hidden.
//Hidden.
// typeP View = React.ComponentProps<typeof x.View>
// let View: ViewP;
// f.View.
//View.
type TextP = React.ComponentProps<typeof x.Text>;
let Text: TextP;
f.Text.
//Text.
type CodeP = React.ComponentProps<typeof x.Code>;
let Code: CodeP;
f.Code.
//Code.
type CheckboxP = React.ComponentProps<typeof x.Checkbox>;
let Checkbox: CheckboxP;
f.Checkbox.
//Checkbox.
type RadioP = React.ComponentProps<typeof x.Radio>;
let Radio: RadioP;
f.Radio.
//Radio.
type ColumnP = React.ComponentProps<typeof x.Column>;
let Column: ColumnP;
f.Column.
//Column.
type RowP = React.ComponentProps<typeof x.Row>;
let Row: RowP;
f.Row.
//Row.
type CenterP = React.ComponentProps<typeof x.Center>;
let Center: CenterP;
f.Center.
//Center.
type SquareP = React.ComponentProps<typeof x.Square>;
let Square: SquareP;
f.Square.
//Square.
type CircleP = React.ComponentProps<typeof x.Circle>;
let Circle: CircleP;
f.Circle.
//Circle.
type BoxP = React.ComponentProps<typeof x.Box>;
let Box: BoxP;
f.Box.
//Box.
type StackP = React.ComponentProps<typeof x.Stack>;
let Stack: StackP;
f.Stack.
//Stack.
type VStackP = React.ComponentProps<typeof x.VStack>;
let VStack: VStackP;
f.VStack.
//VStack.
type HStackP = React.ComponentProps<typeof x.HStack>;
let HStack: HStackP;
f.HStack.
//HStack.
type ZStackP = React.ComponentProps<typeof x.ZStack>;
let ZStack: ZStackP;
f.ZStack.
//ZStack.
type SliderP = React.ComponentProps<typeof x.Slider>;
let Slider: SliderP;
f.Slider.
//Slider.
type IconP = React.ComponentProps<typeof x.Icon>;
let Icon: IconP;
f.Icon.
//Icon.

type InputP = React.ComponentProps<typeof x.Input>;
let Input: InputP;
f.Input.
//Input.
type InputGroupP = React.ComponentProps<typeof x.InputGroup>;
let InputGroup: InputGroupP;
f.InputGroup.
//InputGroup.
type InputLeftAddonP = React.ComponentProps<typeof x.InputLeftAddon>;
let InputLeftAddon: InputLeftAddonP;
f.InputLeftAddon.
//InputLeftAddon.
type InputRightAddonP = React.ComponentProps<typeof x.InputRightAddon>;
let InputRightAddon: InputRightAddonP;
f.InputRightAddon.
//InputRightAddon.
type SpinnerP = React.ComponentProps<typeof x.Spinner>;
let Spinner: SpinnerP;
f.Spinner.
//Spinner.
type ImageP = React.ComponentProps<typeof x.Image>;
let Image: ImageP;
f.Image.
//Image.
type SwitchP = React.ComponentProps<typeof x.Switch>;
let Switch: SwitchP;
f.Switch.
//Switch.
type FlexP = React.ComponentProps<typeof x.Flex>;
let Flex: FlexP;
f.Flex.
//Flex.
type KbdP = React.ComponentProps<typeof x.Kbd>;
let Kbd: KbdP;
f.Kbd.
//Kbd.
type BreadcrumbP = React.ComponentProps<typeof x.Breadcrumb>;
let Breadcrumb: BreadcrumbP;
f.Breadcrumb.
//Breadcrumb.
type ContainerP = React.ComponentProps<typeof x.Container>;
let Container: ContainerP;
f.Container.
//Container.
type DividerP = React.ComponentProps<typeof x.Divider>;
let Divider: DividerP;
f.Divider.
//Divider.
type LinkP = React.ComponentProps<typeof x.Link>;
let Link: LinkP;
f.Link.
//Link.
type OverlayP = React.ComponentProps<typeof x.Overlay>;
let Overlay: OverlayP;
f.Overlay.
//Overlay.
type PressableP = React.ComponentProps<typeof x.Pressable>;
let Pressable: PressableP;
f.Pressable.
//Pressable.
type ProgressP = React.ComponentProps<typeof x.Progress>;
let Progress: ProgressP;
f.Progress.
//Progress.
type AccordionP = React.ComponentProps<typeof x.Accordion>;
let Accordion: AccordionP;
f.Accordion.
//Accordion.
type SkeletonP = React.ComponentProps<typeof x.Skeleton>;
let Skel; //eton: Skelet//onP
//Skelet//on.
type FormControlP = React.ComponentProps<typeof x.FormControl>;
let FormControl: FormControlP;
f.FormControl.
//FormControl.

type TagP = React.ComponentProps<typeof x.Tag>;
let Tag: TagP;
f.Tag.
//Tag.
type TextAreaP = React.ComponentProps<typeof x.TextArea>;
let TextArea: TextAreaP;
f.TextArea.
//TextArea.

type WrapP = React.ComponentProps<typeof x.Wrap>;
let Wrap: WrapP;
f.Wrap.
//Wrap.
type PinInputP = React.ComponentProps<typeof x.PinInput>;
let PinInput: PinInputP;
f.PinInput.
//PinInput.
type FadeP = React.ComponentProps<typeof x.Fade>;
let Fade: FadeP;
f.Fade.
//Fade.
type ScaleFadeP = React.ComponentProps<typeof x.ScaleFade>;
let ScaleFade: ScaleFadeP;
f.ScaleFade.
//ScaleFade.
type SlideP = React.ComponentProps<typeof x.Slide>;
let Slide: SlideP;
f.Slide.
//Slide.
type SlideFadeP = React.ComponentProps<typeof x.SlideFade>;
let SlideFade: SlideFadeP;
f.SlideFade.
//SlideFade.
type PresenceTransitionP = React.ComponentProps<typeof x.PresenceTransition>;
let PresenceTransition: PresenceTransitionP;
f.PresenceTransition.
//PresenceTransition.
type StaggerP = React.ComponentProps<typeof x.Stagger>;
let Stagger: StaggerP;
f.Stagger.
//Stagger.
// type NumberInputP = React.ComponentProps<typeof x.NumberInput>;
// let NumberInput: NumberInputP;
// f.NumberInput.
//NumberInput.
type NumberInputFieldP = React.ComponentProps<typeof x.NumberInputField>;
let NumberInputField: NumberInputFieldP;
f.NumberInputField.
//NumberInputField.
type NumberInputStepperP = React.ComponentProps<typeof x.NumberInputStepper>;
let NumberInputStepper: NumberInputStepperP;
f.NumberInputStepper.
//NumberInputStepper.
type NumberIncrementStepperP = React.ComponentProps<
  typeof x.NumberIncrementStepper
>;
let NumberIncrementStepper: NumberIncrementStepperP;
f.NumberIncrementStepper.
//NumberIncrementStepper.
type NumberDecrementStepperP = React.ComponentProps<
  typeof x.NumberDecrementStepper
>;
let NumberDecrementStepper: NumberDecrementStepperP;
f.NumberDecrementStepper.
//NumberDecrementStepper.
type SpacerP = React.ComponentProps<typeof x.Spacer>;
let Spacer: SpacerP;
f.Spacer.
//Spacer.
type CollapseP = React.ComponentProps<typeof x.Collapse>;
let Collapse: CollapseP;
f.Collapse.
//Collapse.
// type CircularProgressP = React.ComponentProps<typeof x.CircularProgress>
// let CircularProgress: CircularProgressP
// //CircularProgress.
type ListP = React.ComponentProps<typeof x.List>;
let List: ListP;
f.List.
//List.
type PopoverP = React.ComponentProps<typeof x.Popover>;
let Popover: PopoverP;
f.Popover.
//Popover.
type AlertDialogP = React.ComponentProps<typeof x.AlertDialog>;
let AlertDialog: AlertDialogP;
f.AlertDialog.
//AlertDialog.
// typeP useToast = React.ComponentProps<typeof x.useToast>
// let useToast: useToastP;
// f.useToast.
//useToast.
type MenuP = React.ComponentProps<typeof x.Menu>;
let Menu: MenuP;
f.Menu.
//Menu.
type SimpleGridP = React.ComponentProps<typeof x.SimpleGrid>;
let SimpleGrid: SimpleGridP;
f.SimpleGrid.
//SimpleGrid.
// typeP Tabs = React.ComponentProps<typeof x.Tabs>
// let Tabs: TabsP;
f.Tabs.
//Tabs.
type ActionsheetP = React.ComponentProps<typeof x.Actionsheet>;
let Actionsheet: ActionsheetP;
f.Actionsheet.
//Actionsheet.
type FabP = React.ComponentProps<typeof x.Fab>;
let Fab: FabP;
f.Fab.
//Fab.
type TypeaheadP = React.ComponentProps<typeof x.Typeahead>;
let Typeahead: TypeaheadP;
f.Typeahead.
//Typeahead.
// type useTypeaheadP = React.ComponentProps<typeof x.useTypeahead>
// let useTypeahead: useTypeaheadP
//useTypeahead.
type SelectP = React.ComponentProps<typeof x.Select>;
let Select: SelectP;
f.Select.
//Select.
type ModalP = React.ComponentProps<typeof x.Modal>;
let Modal: ModalP;
f.Modal.
//Modal.
// type useToastP = React.ComponentProps<typeof x.useToast>
// let useToast: useToastP
//useToast.
// type ToastP = React.ComponentProps<typeof x.Toast>
// let Toast: ToastP
//Toast.
type BackdropP = React.ComponentProps<typeof x.Backdrop>;
let Backdrop: BackdropP;
f.Backdrop.
//Backdrop.
type DrawerP = React.ComponentProps<typeof x.Drawer>;
let Drawer: DrawerP;
f.Drawer.
//Drawer.
type TooltipP = React.ComponentProps<typeof x.Tooltip>;
let Tooltip: TooltipP;
f.Tooltip.
//Tooltip.

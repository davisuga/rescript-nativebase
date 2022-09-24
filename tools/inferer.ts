import * as NativeBase from "../node_modules/native-base/lib/typescript/";
import * as NativeBaseComponentsPrimitives from "../node_modules/native-base/lib/typescript/components/primitives/";

export type ExpandDeep<T> = T extends object
  ? T extends infer O
    ? {
        [K in keyof O]: O[K]  extends keyof JSX.IntrinsicElements | React.JSXElementConstructor<any>
          ? ExpandDeep<React.ComponentProps<O[K]>>
          : ExpandDeep<O[K]>;
      }
    : never
  : T;
type G = typeof NativeBaseComponentsPrimitives;
type F = ExpandDeep<G>;
let f:F;
f.
const x: G = JSON.parse("");
// x.

type ButtonP = React.ComponentProps<typeof x.Button>
let i: ButtonP;
// i.

type InputP = React.ComponentProps<typeof x.Input>
let i2: InputP;
// Input.
type RadioP = React.ComponentProps<typeof x.Radio>
let Radio: RadioP;
// Radio.

// export const f = () => {
//   const x: F = JSON.parse("");
//   x.Accordion.params0.
//   return x;
// };

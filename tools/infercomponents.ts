import * as NativeBase from "../node_modules/native-base/lib/typescript/";
import * as NativeBaseComponents from "../node_modules/native-base/lib/typescript/components/types/index";



export type ExpandDeep<T> = T extends object
  ? T extends infer O
    ? {
        [K in keyof O]: O[K]  extends keyof JSX.IntrinsicElements | React.JSXElementConstructor<any>
          ? ExpandDeep<React.ComponentProps<O[K]>>
          : ExpandDeep<O[K]>;
      }
    : never
  : T;
type G = typeof NativeBaseComponents;
type F = ExpandDeep<G>;
let f:F;
f.
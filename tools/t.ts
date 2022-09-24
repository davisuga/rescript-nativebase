import * as fs from "fs";
import * as ts from "typescript";
const foldChild =
  <Acc>(sum: (a: Acc, node: ts.Node) => Acc) =>
  (initial: Acc) =>
  (src: ts.SourceFile) => {
    let acc = initial;
    ts.forEachChild(src, (node) => {
      acc = sum(acc, node);
    });
    return acc;
  };
function watch(rootFileNames: string[], options: ts.CompilerOptions) {
  const files: ts.MapLike<{ version: number }> = {};

  // initialize the list of files
  rootFileNames.forEach((fileName) => {
    files[fileName] = { version: 0 };
  });

  // Create the language service host to allow the LS to communicate with the host
  const servicesHost: ts.LanguageServiceHost = {
    getScriptFileNames: () => rootFileNames,
    getScriptVersion: (fileName) =>
      files[fileName] && files[fileName].version.toString(),
    getScriptSnapshot: (fileName) => {
      if (!fs.existsSync(fileName)) {
        return undefined;
      }

      return ts.ScriptSnapshot.fromString(fs.readFileSync(fileName).toString());
    },
    getCurrentDirectory: () => process.cwd(),
    getCompilationSettings: () => options,
    getDefaultLibFileName: (options) => ts.getDefaultLibFilePath(options),
    fileExists: ts.sys.fileExists,
    readFile: ts.sys.readFile,
    readDirectory: ts.sys.readDirectory,
    directoryExists: ts.sys.directoryExists,
    getDirectories: ts.sys.getDirectories,
  };

  // Create the language service files
  const services = ts.createLanguageService(
    servicesHost,
    ts.createDocumentRegistry(),
  );
  // Now let's watch the files
  rootFileNames.forEach((fileName) => {
    // First time around, emit all files
    emitFile(fileName);

    // Add a watch on the file to handle next change
    fs.watchFile(
      fileName,
      { persistent: true, interval: 250 },
      (curr, prev) => {
        // Check timestamp
        if (+curr.mtime <= +prev.mtime) {
          return;
        }

        // Update the version to signal a change in the file
        files[fileName].version++;

        // write the changes to disk
        emitFile(fileName);
      },
    );
  });

  function emitFile(fileName: string) {
    const program = services.getProgram();
    const tc = program.getTypeChecker();
    const files = program.getSourceFiles();
    const files2 = [program.getSourceFile("./infercomponents.ts")];
    // console.log(files, files2);
    const components = files
      .filter((fn) => fn.fileName.includes("inferer"))
      .map((sourceFile) => {
        console.log("sourceFile", sourceFile.fileName);
        // Walk the tree to search for classes
        return foldChild<string[]>((acc, tsNode) => {
          const text = tsNode.getText();
          if (!text.endsWith(".")) return acc;
          // if (sourceFile.fileName.includes("inferer")) {
          console.log({ acc });
          return [
            ...acc,
            ...[
              ...services.getCompletionsAtPosition(
                fileName,
                tsNode.getEnd(),
                {},
              ).entries,
            ].map((e) => e.name),
          ];
          // }
        })([])(sourceFile);

        // ts.forEachChild(sourceFile, (tsNode) => {
        //   const text = tsNode.getText();
        //   if (!text.endsWith(".")) return;

        //   if (sourceFile.fileName === "infer-components.ts") {
        //   }
        //   // console.log("tsNode", /);

        //   console.log(
        //     tsNode.getText(),
        //     [
        //       ...services.getCompletionsAtPosition(
        //         fileName,
        //         tsNode.getEnd(),
        //         {},
        //       ).entries,
        //     ].map((e) => e.name),
        //   );
        //   // .map();

        //   // const nodeTyp = tc.getTypeAtLocation(tsNode);
        //   // // console.log("nodeTyp", nodeTyp);
        //   // printType(tc, nodeTyp, tsNode);
        //   // const symbols = tc.getTypeAtLocation(tsNode).getProperties();
        //   // console.log("symbols", symbols);
        //   // if (!symbols.length) return;
        //   // // console.log(tsNode);

        //   // symbols.map((a) => console.log(a.escapedName));
        //   // symbols.map((symbol) => {
        //   //   if (symbol.escapedName[0] === "Input") {
        //   //     console.log("name: ", symbol.escapedName);
        //   //     const typ = tc.getTypeOfSymbolAtLocation(symbol, tsNode);
        //   //     printType(tc, typ, tsNode);
        //   //   }
        //   // });
        // });
      });
    console.log(...components);
    // components.map((c) => {});
  }
}

// Initialize files constituting the program as all .ts files in the current directory
const currentDirectoryFiles = fs
  .readdirSync(process.cwd())
  .filter(
    (fileName) =>
      fileName.length >= 3 && fileName.substr(fileName.length - 3, 3) === ".ts",
  );
function censor(censor) {
  var i = 0;

  return function (key, value) {
    if (
      i !== 0 &&
      typeof censor === "object" &&
      typeof value == "object" &&
      censor == value
    )
      return "[Circular]";

    if (i >= 49)
      // seems to be a harded maximum of 30 serialized objects?
      return "[Unknown]";

    ++i; // so we know we aren't using the original object anymore

    return value;
  };
}
// Start the watcher
watch(["./inferer.ts"], { module: ts.ModuleKind.CommonJS });
function printType(tc: ts.TypeChecker, typ: ts.Type, node: ts.Node) {
  const properties = typ.getProperties();
  // console.log(JSON.stringify(typ, censor, 2));

  console.log("abstract: ", tc.typeToString(typ));
  console.log(
    "keys",
    properties.map((symb) => {
      // console.log(JSON.stringify(symb, censor, 2));
      return symb;
    }),
  );
  console
    .log
    // "params",
    // typ.getBaseTypes(),
    //   .getCallSignatures()
    //   .map((symb) => symb.parameters.map((param) => param.getName())),
    ();
  const propsSymb = typ.getCallSignatures()?.[0]?.parameters?.[0];
  // console.log(propsSymb, "\n\n");
}

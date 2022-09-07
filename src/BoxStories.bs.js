'use strict';

var Box = require("./Box.bs.js");
var React = require("react");
var Storybook = require("./Storybook.bs.js");
var NativeBase = require("native-base");

var $$default = Storybook.story("Components/Base", undefined, undefined, undefined, undefined);

function basicUsage(param) {
  return React.createElement((function (prim) {
                return NativeBase.Box(prim);
              }), Box.makeProps(undefined));
}

exports.$$default = $$default;
exports.default = $$default;
exports.__esModule = true;
exports.basicUsage = basicUsage;
/* default Not a pure module */

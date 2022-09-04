'use strict';

var Box = require("./Box.bs.js");
var Curry = require("rescript/lib/js/curry.js");
var React = require("react");
var NativeBase = require("native-base");

var e = React.createElement((function (prim) {
        return NativeBase.Box(prim);
      }), Curry._1(Box.makeProps(undefined), 2));

var a = React.createElement("div", undefined);

exports.e = e;
exports.a = a;
/* e Not a pure module */

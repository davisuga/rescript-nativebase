'use strict';

var React = require("react");

function makeProps(prim) {
  return prim;
}

var Binding = {
  makeProps: makeProps
};

function make(param) {
  return React.createElement("h1", undefined);
}

var Delivery = {
  make: make
};

exports.Binding = Binding;
exports.makeProps = makeProps;
exports.Delivery = Delivery;
/* react Not a pure module */

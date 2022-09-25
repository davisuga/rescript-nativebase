# `rescript-nativebase`

[![Build Status](https://github.com/rescript-react-native/__template__/workflows/Build/badge.svg)](https://github.com/rescript-react-native/__template__/actions)
[![Version](https://img.shields.io/npm/v/rescript-nativebase.svg)](https://www.npmjs.com/rescript-nativebase)
[![ReScript Forum](https://img.shields.io/discourse/posts?color=e6484f&label=ReScript%20Forum&server=https%3A%2F%2Fforum.rescript-lang.org)](https://forum.rescript-lang.org/)

[ReScript](https://rescript-lang.org) bindings for
[`nativebase`](https://github.com/GeekyAnts/nativebase).

Exposed as `RescriptNativeBase` module.

`rescript-nativebase` X.y.\* means it's compatible with
`nativebase` X.y.\*

## Installation

When
[`nativebase`](https://github.com/GeekyAnts/nativebase)
is properly installed & configured by following their installation instructions,
you can install the bindings:

```console
npm install rescript-nativebase
# or
yarn add rescript-nativebase
```

`rescript-nativebase` should be added to `bs-dependencies` in your
`bsconfig.json`:

```diff
{
  //...
  "bs-dependencies": [
    "@rescript/react",
    "rescript-react-native",
    // ...
+    "rescript-nativebase"
  ],
  //...
}
```

## Usage

### Types

#### `RescriptNativeBase.t`

...

### Methods

#### `RescriptNativeBase.method`

...

---

## Changelog

Check the [changelog](./CHANGELOG.md) for more informations about recent
releases.

---

## Contribute

Read the
[contribution guidelines](https://github.com/rescript-react-native/.github/blob/master/CONTRIBUTING.md)
before contributing.

## Code of Conduct

We want this community to be friendly and respectful to each other. Please read
[our full code of conduct](https://github.com/rescript-react-native/.github/blob/master/CODE_OF_CONDUCT.md)
so that you can understand what actions will and will not be tolerated.

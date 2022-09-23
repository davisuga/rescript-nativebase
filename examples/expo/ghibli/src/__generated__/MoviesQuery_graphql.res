/* @sourceLoc Movies.res */
/* @generated */
%%raw("/* @generated */")
module Types = {
  @@ocaml.warning("-30")

  type rec response_films = {
    description: option<string>,
    @live id: string,
    image: option<string>,
    title: option<string>,
  }
  type response = {films: option<array<option<response_films>>>}
  @live
  type rawResponse = response
  @live
  type variables = unit
  @live
  type refetchVariables = unit
  @live let makeRefetchVariables = () => ()
}

module Internal = {
  @live
  let variablesConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(json`{}`)
  @live
  let variablesConverterMap = ()
  @live
  let convertVariables = v =>
    v->RescriptRelay.convertObj(variablesConverter, variablesConverterMap, Js.undefined)
  @live
  type wrapResponseRaw
  @live
  let wrapResponseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(json`{}`)
  @live
  let wrapResponseConverterMap = ()
  @live
  let convertWrapResponse = v =>
    v->RescriptRelay.convertObj(wrapResponseConverter, wrapResponseConverterMap, Js.null)
  @live
  type responseRaw
  @live
  let responseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(json`{}`)
  @live
  let responseConverterMap = ()
  @live
  let convertResponse = v =>
    v->RescriptRelay.convertObj(responseConverter, responseConverterMap, Js.undefined)
  type wrapRawResponseRaw = wrapResponseRaw
  @live
  let convertWrapRawResponse = convertWrapResponse
  type rawResponseRaw = responseRaw
  @live
  let convertRawResponse = convertResponse
}

type queryRef

module Utils = {
  @@ocaml.warning("-33")
  open Types
  @live @obj external makeVariables: unit => unit = ""
}

type relayOperationNode
type operationType = RescriptRelay.queryNode<relayOperationNode>

let node: operationType = %raw(json` (function(){
var v0 = [
  {
    "alias": null,
    "args": null,
    "concreteType": "Film",
    "kind": "LinkedField",
    "name": "films",
    "plural": true,
    "selections": [
      {
        "alias": null,
        "args": null,
        "kind": "ScalarField",
        "name": "id",
        "storageKey": null
      },
      {
        "alias": null,
        "args": null,
        "kind": "ScalarField",
        "name": "image",
        "storageKey": null
      },
      {
        "alias": null,
        "args": null,
        "kind": "ScalarField",
        "name": "title",
        "storageKey": null
      },
      {
        "alias": null,
        "args": null,
        "kind": "ScalarField",
        "name": "description",
        "storageKey": null
      }
    ],
    "storageKey": null
  }
];
return {
  "fragment": {
    "argumentDefinitions": [],
    "kind": "Fragment",
    "metadata": null,
    "name": "MoviesQuery",
    "selections": (v0/*: any*/),
    "type": "Query",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": [],
    "kind": "Operation",
    "name": "MoviesQuery",
    "selections": (v0/*: any*/)
  },
  "params": {
    "cacheID": "a37454c193698a87db3eda55c9747032",
    "id": null,
    "metadata": {},
    "name": "MoviesQuery",
    "operationKind": "query",
    "text": "query MoviesQuery {\n  films {\n    id\n    image\n    title\n    description\n  }\n}\n"
  }
};
})() `)

include RescriptRelay.MakeLoadQuery({
  type variables = Types.variables
  type loadedQueryRef = queryRef
  type response = Types.response
  type node = relayOperationNode
  let query = node
  let convertVariables = Internal.convertVariables
})

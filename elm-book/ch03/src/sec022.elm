module Main exposing (FooBar(..), foobar, foobarHelp, json, result1)

import Html exposing (Html, button, input, text)
import Html.Events exposing (custom, on)
import Json.Decode exposing (..)
import Json.Encode


json =
    """{ "person" : { "name": "Tom", "age": 42}}"""


result1 =
    decodeString (at [ "person", "name" ] string) json == Ok "Tom"


type FooBar
    = Foo Int String
    | Bar Bool


foobar : Decoder FooBar
foobar =
    field "type" string |> andThen foobarHelp


foobarHelp : String -> Decoder FooBar
foobarHelp type_ =
    case type_ of
        "foo" ->
            map2 Foo
                (field "id" int)
                (field "name" string)

        "bar" ->
            map Bar
                (field "flag" bool)

        _ ->
            fail "type should be one of [foo,bar]"


type alias Message =
    { timestamp : Float, data : Value }


messageDecoder : Decoder Message
messageDecoder =
    map2 Message
        (field "timestamp" float)
        (field "data" value)



-- この時点では何かわからない（何でもいい）


getData : Decoder a -> Message -> Maybe a
getData decoder { data } =
    decodeValue decoder data |> Result.toMaybe



-- ↓Html.Events.targetValueと一緒↓


targetValueDecoder : Decoder String
targetValueDecoder =
    at [ "target", "value" ] string


type Msg
    = Input String


view : Html Msg
view =
    input [ on "input" (Json.Decode.map Input targetValueDecoder) ] []


type Msg1
    = Click


view1 : Html Msg1
view1 =
    button
        [ custom "click"
            (Json.Decode.succeed
                { message = Click
                , stopPropagation = True
                , preventDefault = True
                }
            )
        ]
        [ text "Click" ]


tom : Json.Encode.Value
tom =
    Json.Encode.object
        [ ( "name", Json.Encode.string "Tom" )
        , ( "age", Json.Encode.int 42 )
        ]


compact =
    Json.Encode.encode 0 tom


readable =
    Json.Encode.encode 4 tom

module Main exposing (validate)

import Array exposing (Array)
import Dict exposing (Dict)
import Set exposing (Set)


validate : String -> Result String Float
validate text =
    case String.toFloat text of
        Just value ->
            Ok value

        Nothing ->
            Err "数値を入力してください"


dict : Dict Int String
dict =
    Dict.fromList [ ( 1, "one" ), ( 2, "two" ) ]



--Dict.get 2 dict   //Just "two"
--Dict.get 3 dict   //Nothing


set : Set Int
set =
    Set.fromList [ 1, 2, 3, 2, 1 ]



--Set.length set // 3
--Set.member 3 // True
--Set.length 4 // False


array : Array String
array =
    Array.fromList [ "one", "two", "three" ]



--Array.get 0 // Just "one"
--Array.get 3 // Nothing
--Array.set 2 "hello" // Array.fromList ["one","two","hello"]

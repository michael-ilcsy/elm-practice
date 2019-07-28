module Main exposing (test)


test =
    List.head [ "1", "2", "3" ]
        |> Maybe.andThen String.toInt
        |> Maybe.withDefault 0

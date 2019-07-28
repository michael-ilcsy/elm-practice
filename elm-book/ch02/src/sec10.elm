module Main exposing (showNumberUntil)

{-| 1からある数値までを表示する

    showNumberUntil 3 --> "1,2,3"

-}


showNumberUntil : Int -> String
showNumberUntil max =
    List.range 1 max
        |> List.map String.fromInt
        |> String.join ","



--    String.join "," (List.map String.fromInt (List.range 1 max))


showNumberUntilChain : Int -> String
showNumberUntilChain =
    List.range 1 >> List.map String.fromInt >> String.join ","

module Main exposing (add1)


add1 a b =
    Debug.log "value of a" a + b


add2 a b =
    let
        _ =
            Debug.log "(a,b)" ( a, b )
    in
    a + b


example =
    List.head [ "1", "2", "3" ]
        |> Debug.log "head"
        |> Maybe.andThen String.toInt
        |> Debug.log "num"
        |> Maybe.map (\num -> num * 10)
        |> Debug.log "num2"
        |> Maybe.withDefault 0
        |> Debug.log "result"


type Language
    = Ja
    | En


showMessage : Language -> String
showMessage lang =
    case lang of
        Ja ->
            "パスワードは8文字以上の英数字である必要があります"

        En ->
            Debug.todo "あとで英訳する"


logic : String -> Int
logic str =
    str |> makeSomething |> convertToAnother |> calculate


makeSomething : String -> Int
makeSomething str =
    Debug.todo "Not implemented yet."


convertToAnother : Int -> Int
convertToAnother int =
    Debug.todo "Not implemented yet."


calculate : Int -> Int
calculate int =
    Debug.todo "Not implemented yet."

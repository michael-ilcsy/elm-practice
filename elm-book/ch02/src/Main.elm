module Main exposing (add, output)

import Html exposing (..)
import Html.Attributes exposing (href)


output =
    "1 + 1 = " ++ String.fromInt (add 1 1)


add a b =
    a + b



--1行コメント
{-
   複数行コメント
-}


{-|

    ドキュメントのためのコメント
    view {flag=True}

-}
view model =
    div []
        [ text "Hello,world!"
        , a [ href "#" ] [ text "TOP" ]
        ]

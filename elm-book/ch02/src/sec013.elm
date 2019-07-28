module Main exposing (length, list1, list2)


length =
    List.length [ 1, 2, 3, 4, 5 ]


list1 =
    List.map (\lang -> "I Love" ++ lang) [ "Elm", "JavaScript" ]


list2 =
    List.map ((*) 10) [ 2, 3, 5 ]


list3 =
    List.indexedMap (\index lang -> String.fromInt index ++ ":" ++ lang) [ "Elm", "JavaScript" ]


list4 =
    List.indexedMap Tuple.pair [ 2, 3, 5 ]


list5 =
    List.filter (\( _, staticType ) -> staticType) [ ( "Elm", True ), ( "JavaScript", False ) ]


list6 =
    List.filter (\n -> remainderBy 2 n == 1) [ 2, 3, 5 ]


list7 =
    List.filterMap
        (\( lang, staticType ) ->
            if staticType then
                Just lang

            else
                Nothing
        )
        [ ( "Elm", True ), ( "JavaScript", False ) ]


list8 =
    List.filterMap
        (\n ->
            if remainderBy 2 n == 1 then
                Just (10 * n)

            else
                Nothing
        )
        [ 2, 3, 5 ]


list9 =
    List.foldl (\n sum -> sum + n) 0 [ 1, 2, 3, 4, 5 ]


list10 =
    List.foldl (+) 0 [ 1, 2, 3, 4, 5 ]

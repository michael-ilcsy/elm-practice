module Main exposing (Day(..), Lang(..), firstDay, hello, weekDay)


type Day
    = Mon
    | Tue
    | Wed
    | Thu
    | Fri
    | Sat
    | Sun


firstDay : Day
firstDay =
    Mon


weekDay : List Day
weekDay =
    [ Mon, Tue, Wed, Thu, Fri ]


type Lang
    = En
    | Ja
    | Fr


hello : Lang -> String
hello lang =
    case lang of
        En ->
            "Hello"

        Ja ->
            "こんにちは"

        Fr ->
            "Bonjour"


type User
    = LoggedIn Bool String
    | Guest


message : User -> String
message user =
    case user of
        LoggedIn True name ->
            "Hello," ++ name ++ "(Administrator)."

        LoggedIn False name ->
            "Hello," ++ name ++ "."

        Guest ->
            "Please Login."


admnUser : String -> User


adminUser =
    LoggedIn True


admin =
    adminUser "Taro"


others =
    List.map (LoggedIn False) [ "Hanako", "John" ]


hasMany number =
    case number of
        1 ->
            "one"

        2 ->
            "two"

        _ ->
            "many"


adoption ( functional, staticType ) =
    case ( functional, staticType ) of
        ( True, True ) ->
            "Yes!"

        ( False, False ) ->
            "No..."

        _ ->
            "I dom't know."


listMatch list =
    case list of
        [] ->
            "Empty"

        first :: rest ->
            first

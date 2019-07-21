module Main exposing (add, output)

-- 型注釈をつける


output : String
output =
    "1 + 1 = " ++ String.fromInt (add 1 1)


add : Int -> Int -> Int
add a b =
    a + b


path =
    join "Hello" "," "World"


join : String -> String -> String -> String
join a b c =
    a ++ b ++ c



-- 型に別名をつける


type alias User =
    { id : Int
    , name : String
    , image : String
    }


isValid : User -> Bool
isValid user =
    String.length user.name > 0



-- コンストラクタみたいな関数が作られる


testUser : User
testUser =
    User 1 "Taro" "1.png"



-- あとで変えられるように型に別名をつける


type alias UserId =
    Int


generateNewId : UserId -> UserId
generateNewId lastId =
    lastId + 1

import Foundation

let add: (Int, Int) -> Int = { (lhs, rhs) -> Int in lhs + rhs }

add(20,40)

func add10To (_ value: Int) -> Int {
    value + 10
}

func add20To (_ value: Int) -> Int {
    value + 20
}

func doAddition (on value: Int, using function: (Int) -> Int ) -> Int {
    function(value)
}

doAddition(on: 10, using: add10To (_:))
doAddition(on: 10, using: add20To (_:))

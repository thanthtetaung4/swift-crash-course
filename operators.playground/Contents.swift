import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    "I'm older than you"
} else if (myAge < yourAge) {
    "I'm youger than you"
} else {
    "We are the same age"
}


let myMomAge = myAge + 30
let double = myAge * 2

//unary prefix
let foo = !true
//unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

let age = 31 
let message = age > 30 ? "you are old" : "not that old but old"

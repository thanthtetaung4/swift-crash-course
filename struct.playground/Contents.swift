import Foundation

struct Person {
    let firstName: String
    let lastName: String
    init (_ firstName: String, _ lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let p = Person("thant", "aung")
p.firstName
p.lastName

// Computer Property
struct Person2 {
    let firstName: String
    let lastName: String
    // cannot be let fullName: String = "\(firstName) \(lastName)"
    // because firstName & lastName doesn't exist yet
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    init(_ firstName: String, _ lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let p2 = Person2("thant", "aung")
p2.fullName

// Mutable struct
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        ("Driving...")
        currentSpeed = speed
    }
}

// cannot call the mutating function on immutable struct
let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 30)

// can call since both are mutable
var mutableCar = Car(currentSpeed: 0)
mutableCar.drive(speed: 30)
mutableCar.currentSpeed

// passed by value so copy is not effected by the change
let copy = mutableCar
// var copy = mutableCar will also be the same as structs are passed by value
mutableCar.drive(speed: 60)
mutableCar.currentSpeed // 60
copy.currentSpeed // 30

// structs cannot inherit from each other
// struct Animal {}
// struct Cat : Animal {}

// creating a custom copy of the structure
struct Bike {
    let manufactureer: String
    let currentSpeed: Int
    func copy (speed: Int) -> Bike {
        Bike (manufactureer: self.manufactureer, currentSpeed: speed)
    }
}

let bike1 = Bike(manufactureer: "BMW", currentSpeed: 0)
let bike2 = bike1.copy(speed: 40)

bike1.currentSpeed
bike2.currentSpeed

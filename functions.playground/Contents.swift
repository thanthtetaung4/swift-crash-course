import Foundation

func doNothing () {
    "litreally doing nth"
}

func greet (person name: String) {
    "greetings \(name)"
}

func moreGreet (name :String) {
    "greetings \(name)"
}

moreGreet(name: "thant")

greet(person: "thant")

func anotherGreet (_ name: String) {
    "greetings \(name)"
}

anotherGreet("thant")

func anotherMoreGreet (_ name: String = "John") {
    "greetings \(name)"
}

anotherMoreGreet()

func complicatedGreet (_ name: String) {
    func greet(_ name: String) {
        "greetings \(name)"
    }
    greet(name)
}

complicatedGreet("thant")

func sum (_ lhs: Int, _ rhs: Int) -> Int {
    return lhs + rhs
}

sum(10, 20)

@discardableResult
func change (_ val: inout Int) -> Bool {
    if ( val > 10)
    {
        val-=1
        return (true)
    }
    else {
        val+=1
        return false
    }
}

var myInt = 10
change(&myInt)
myInt

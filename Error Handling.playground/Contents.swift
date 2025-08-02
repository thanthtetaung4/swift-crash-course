import Foundation

struct Person {
    let firstName: String?
    let lastName: String?
    
    enum Errors : Error {
        case firstNameIsNil
        case lastNameIsNil
        case bothNamesAreNil
    }
    
    func getFullName () throws -> String {
        switch(firstName, lastName){
        case(.none, .none):
            throw Errors.bothNamesAreNil
        case(.none, .some):
            throw Errors.firstNameIsNil
        case(.some, .none):
            throw Errors.lastNameIsNil
        case let (.some(firstName), .some(lastName)):
            return "\(firstName) \(lastName)"
            
        }
    }
}

let p = Person(firstName: nil, lastName: nil)

do {
    try p.getFullName()
} catch Person.Errors.bothNamesAreNil {
    "error: Both names are nil"
} catch Person.Errors.firstNameIsNil {
    "err: First name is nil"
} catch Person.Errors.lastNameIsNil {
    "err: Last name is nil"
} catch {
    "err: Unexpected error occurred"
}

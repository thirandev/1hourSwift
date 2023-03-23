//: [Previous](@previous)

import Foundation

// optionals represent the absence of data
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]
// here peachOpposite is an optional string - nil
// swift doesn't allow us to use them directly

// un-wrapping the optional

if let marioOpposite = opposites["Mario"]{
    print("Mario's opposite is \(marioOpposite)");
}

// using guards

func printSquare(of number:Int?){
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 100)

//nil coalescing
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
print(favorite)

//handle multiple optionals using optional chaining
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

//handle function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

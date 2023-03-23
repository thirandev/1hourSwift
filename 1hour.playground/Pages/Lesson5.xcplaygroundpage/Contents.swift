//: [Previous](@previous)

import Foundation

func primeTable(number:Int){
    for i in 1...12{
        print("\(i) x \(number) is \(i*number)")
    }
}

primeTable(number: 12)

func deciRole() -> Int {
    let endingValue = 2
    return Int.random(in: 1..<endingValue)
}

// for return only
func deciRole2() -> Int { Int.random(in: 1...2)}

print(deciRole())
print(deciRole2())

// get response with tuple

func getUser() -> (firstName:String, lastName: String){
    return (firstName:"Thiran", lastName: "Hetti")
}

// destructure value, and '_' if the value is not needed
let (firstName, _) = getUser()
print(firstName)


// if your don't want to pass paramter name use '_'

func isUppercase(_ string: String)->Bool{
    string == string.uppercased()
}

print(isUppercase("HAS"))

// function paramters with two different para names each internally
// and externally

func printTimesTable(for number: Int){
    for i in 1...12{
        print("\(i) x \(number) is \(i*number)")
    }
}

printTimesTable(for: 10)

// default value for a function

func greet(_ person: String, formal:Bool = false){
    formal ? print("Welcome \(person)")
    :  print("Hi \(person)")
}

greet("Life",formal: true)
greet("Devil")

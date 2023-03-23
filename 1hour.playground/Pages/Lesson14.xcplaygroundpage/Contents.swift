//: [Previous](@previous)

import Foundation

// extentions let us add new functionalty to type

extension String {
    func trimmed() -> String{
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim(){
        self = self.trimmed()
    }
    
    // adding computed properties
    var lines: [String]{
        self.components(separatedBy: .newlines)
    }
    
}

var quote = "  the truth is rarely pure and never simple  "
let trimmed = quote.trimmed()
print(trimmed)
var quote2 = "  the truth is rarely pure and never simple  "

quote2.trim()

print(quote2)

let lyrics = """
blah balj
blah balj
"""

print(lyrics.lines)
print(lyrics.lines.count)

extension Collection{
    var isNotEmpty: Bool{
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]


if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

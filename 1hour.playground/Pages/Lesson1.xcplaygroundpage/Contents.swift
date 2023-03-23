import Foundation

var greeting = "Hello, playground"
greeting = "Hello wold"

let acotor = "Have a great \"Cruise\" man"

let movie = """
A day in
lif of
me
"""

print(acotor)
print(movie.count)
print(movie.hasPrefix("A day"))
print(movie.hasSuffix("meee "))

let score = 10
let highScore = score + 10
print(highScore)

let number = 120
print(number.isMultiple(of: 2))

// Can be even 1 or 100 as well

let id = Int.random(in: 1...100)
print(id)

// toggle makes the opposite

var toggleBoolean = true
toggleBoolean.toggle()
print(toggleBoolean)

//String interpolation

let name = "Taylor"
let age = 26

let message = "I'm \(name) and I'm \(age) years old."
print(message)


// Arrays

var colors = ["Red", "Green", "Blue"]
colors.append("Cyan")
var numberList = [2,3,4,5]
print(colors)
print(colors.contains("Cyan"))
numberList.remove(at: 0)
print(numberList[0])

// empty array to iniciate
var cluse = [String]()

// Dictionaries

let employee = [
    "name": "Taylor",
    "Job": "Singer"
    ]
    
print("\nDictionaries")
print(employee["Job", default: "Unknown"])

// Sets - Removes dulticates, make changers to the order randomly

var numberSets = Set([1,1,2,3,5,7,9])
numberSets.insert(10)
// massive adavantage over arrays, it will run instanly to search
numberSets.contains(2)
print(numberSets)

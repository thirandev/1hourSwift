//: [Previous](@previous)

import Foundation

// Conditionals with IF
let age = 18

if age < 12 {
    print("Your not eligible to vote - \(age)")
}else if age < 18 {
    print("Your eligible to vote soon - \(age)")
}else{
    print("Your eligible to vote - \(age)")
}

// Conditionals with switch

enum Weather: String {
    case sun = "Sunny", rain = "Rainny", wind = "Windy"
}

let forecaset: Weather = .sun

switch(forecaset){
case .sun:
    print("It's \(Weather.sun.rawValue)");
case .wind:
    print("It's \(Weather.wind.rawValue)");
case .rain:
    print("It's \(Weather.rain.rawValue)");
}

// Tenairy opperator

let money = 1_001
let isGreaterThanThousand = money > 1_000 ? "Yes" : "No"
print(isGreaterThanThousand)


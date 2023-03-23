//: [Previous](@previous)

import Foundation

// asssining functionality directly to a variable or const
// closure

let sayHello = { (name: String) -> String in
    "Hello \(name)"
}

print(sayHello("Thiran"))

let team = ["Gloriya", "Tom", "Bod", "Thiran"]

let onlyT = team.filter({(name:String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT)

let onlyT2 = team.filter{name in
     name.hasPrefix("T")
}

print(onlyT2)

// Short Parameter names

let onlyT3 = team.filter{$0.hasPrefix("T")}

print(onlyT3)

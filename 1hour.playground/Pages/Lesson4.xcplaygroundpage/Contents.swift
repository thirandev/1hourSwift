//: [Previous](@previous)

import Foundation

let platforms = ["IOS","MACOS","TVOS"]

for os in platforms{
    print(os )
}

// or you can use 1..<12 to until 11
// break and continue works
for i in 1...12{
    print("5 x \(i) is \(5*i)")
}

for _ in 1...4 {
    print("Just 3 times")
}

var count = 10

while count > 0{
    print(count)
    count -= 1
}

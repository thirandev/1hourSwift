import Foundation

// its different from struct because its in 5 key ways
// 1. Inheritance

class Employee{
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
    
}

class Developer: Employee{
    func work(){
        print("I work \(hours) hours a day.")
    }
    override func printSummary(){
        print("I work \(hours) hours a day as a developer.")
    }
}

let tom = Developer(hours: 100)

tom.work()
tom.printSummary()

// 2. Swift will never make generative initializer for our classes
//    If a class has no custom intializer it will autmatically get it from its parent

class Vehicle{
    let isElectric: Bool
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class Car:Vehicle{
    let isConvertible: Bool
    init(isElectric: Bool,isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// 3. All copies of a class share one particular set of data, which struct dont allow it to happen

class Actor{
    var name = "Nicolas Cage"
}

var actor1 = Actor()
var actor2 = actor1

print(actor1.name)
print(actor2.name)

actor2.name = "Tom Cruise"
print(actor1.name)
print(actor2.name)

actor1.name = "John Wick"
print(actor1.name)
print(actor2.name)

// 4. Classes can have a deinitializer if they need to when the last, reference or object is destory

class Site {
    let id:Int
    init(id: Int){
        self.id = id
        print("Site \(id): I've been created")
    }
    
    deinit{
        print("Site \(id): I've been destory")
    }
    
}

for i in 1...3{
    let site = Site(id:i)
    print("Site \(site.id): I'm in control")
}

// 5. Classes allows as to change properties even if its a constant
class Singer{
    var name = "Adele"
}

let singer = Singer()
singer.name = "Justin"
print(singer.name)

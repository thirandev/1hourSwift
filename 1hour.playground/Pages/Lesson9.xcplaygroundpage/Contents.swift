//: [Previous](@previous)

import Foundation

struct Employee {
    let name:String
    var vacationAllocated = 14
    var vacationTaken = 0
    var vacationRemaining:Int {
        get {
                vacationAllocated - vacationTaken
            }

        set {
            vacationAllocated = vacationTaken + newValue
            }
    }
    
    func printSummary (){
        print("Allocated \(vacationAllocated) Taken \(vacationTaken) Remaining \(vacationRemaining)")
    }
}

var archer = Employee(name: "Tom")
archer.printSummary()
archer.vacationTaken += 5
archer.printSummary()
archer.vacationRemaining = 5
archer.printSummary()

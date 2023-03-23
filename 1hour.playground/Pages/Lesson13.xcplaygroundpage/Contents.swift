//: [Previous](@previous)

import Foundation

// protocols defines functionality we expect other types to support

protocol Vehicle {
    var name: String {get}
    var currentPassengers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "jj"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int){
        print("I'm driving \(distance)km")
    }
}

func communte(distance:Int, using vehicle:Vehicle ){
    if vehicle.estimateTime(for : distance) > 100{
        print("Too Slow!")
    }else{
        vehicle.travel(distance:distance)
    }
}

let car = Car()
communte(distance: 8000, using: car)

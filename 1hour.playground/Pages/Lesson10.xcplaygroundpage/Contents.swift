//: [Previous](@previous)

import Foundation

// How to take action when a property changes
// willSet - Calls before the changers take place
// didSet - Calls after the changers take place

struct Game {
    var score = 0 {
        willSet{
            print("Score is now \(score) - Before")
        }
        didSet {
            print("Score is now \(score) - After")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


// How to create custom initializers

struct Player{
    let name: String
    let number:Int
    // Remember you dont use func before the init
    init(_ name:String) {
        self.name = name
        number = Int.random(in: 1...3)
    }
}

var player = Player("Tome")
print(player.name)
print(player.number)

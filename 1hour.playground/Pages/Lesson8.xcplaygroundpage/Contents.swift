//: [Previous](@previous)

import Foundation

struct Album{
    let title:String
    let artist:String
    var isReleased:Bool = false
    
    func printAlbum(){
        print("\(title) by \(artist)")
    }
    
    mutating func setIsReleased(){
        isReleased.toggle()
    }
    
}

var galanaGaga = Album(title: "Galana Gaga", artist: "Charitha athalage")
print(galanaGaga.artist)
print(galanaGaga.isReleased)

galanaGaga.printAlbum()
galanaGaga.setIsReleased()
print(galanaGaga.isReleased)
galanaGaga.setIsReleased()
print(galanaGaga.isReleased)

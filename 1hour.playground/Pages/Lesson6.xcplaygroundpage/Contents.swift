//: [Previous](@previous)

import Foundation

enum PasswordErrors: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String{
    if password.count < 5 {
        throw PasswordErrors.short
    }
    if password == "12345" {
        throw PasswordErrors.obvious
    }
    
    if password.count < 10 {
        return "OK"
    }else{
        return "Good"
    }
}

do{
    let result = try checkPassword("1234")
    print("Rating: \(result)")
}catch PasswordErrors.obvious {
    print("Dumb ass, renter password")
}catch{
   print("There is an error")
}

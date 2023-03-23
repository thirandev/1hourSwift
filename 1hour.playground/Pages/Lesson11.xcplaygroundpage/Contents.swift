import Foundation

// access modifies in struct

// 1. private -  nothing outside the struct read or writes this
// 2. private set - something outside can read it but only internal things can write it.
// 3. fileprivate - another inside a current file can read and write
// 4. public - anyone can read or write

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int)
    {
        funds += amount
    }
    
    mutating func withdraw(amount:Int)-> Bool {
        if funds > amount {
            funds -= amount
            return true
        }else{
            return false
        }
    }
}

let account = BankAccount(funds: 100)
print(account.funds)
print(account.funds)


// Supports static type and methods allowing us to add them direclty to struct type
// Rather than a particular instance to a struct

struct AppData {
    static let version = "1.3 beta 2"
    static let settingsFile = "settings.json"
}

print(AppData.version)

import Foundation
 
// Way one
enum DaysOfWeek {
    case monday
    case tuesday
    case  wednesday
}

print(DaysOfWeek.monday)
print(DaysOfWeek.tuesday)

// Way 2
enum DaysOfWeek2 {
    case thursday, friday, saturday, sunday
}

print(DaysOfWeek2.thursday)


func getDay(day:DaysOfWeek ){
    switch day{
    case .monday:
        print("Monday")
    case .tuesday:
        print("Tuesday")
    default :
        print("Empty")
    }
}


getDay(day:DaysOfWeek.monday)
getDay(day:DaysOfWeek.tuesday)

//Raw value

enum SocialPlatfrom: Double{
    case facebook = 1.2
    case instagram = 1.3
}

print(SocialPlatfrom.facebook.rawValue)

// CaseIterable it will turn the enum to a collection
enum SocialPlatfrom2: Double, CaseIterable{
    case facebook = 1.2
    case instagram = 1.3
}

print(SocialPlatfrom2.allCases.count)

for plaform in SocialPlatfrom2.allCases {
    print(plaform.rawValue)
}

// Associated values
enum MediaPlaform {
    case linkedin(followers: Int)
    case youtube(subscribers: Int)
    case snapchat
    case instagram
}

func getSponser(for platform: MediaPlaform){
    switch platform{
    case .youtube(let subscribers) where subscribers > 10_000:
        print("Can Get Sponser")
    case .linkedin(let followers) where followers > 25_000:
        print("Can Get Sponser")
    case .instagram,.snapchat, .linkedin:
        print("No Sponser")
    default:
        print("No youtube")
    }
}

getSponser(for: .linkedin(followers:70_000))
getSponser(for: .youtube(subscribers:10_000))
getSponser(for: .instagram)

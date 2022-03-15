// Basic enum

import Darwin

//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}
//var today : Weekday = Weekday.tuesday

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
var today : Weekday = .tuesday

switch today{
    case .monday, .tuesday, .thursday:
        print("You have class!")
    case .wednesday: print("no class")
    default: print("Weekend?")
}
// Rawvalues
enum State: Int {
    case ready = 0
    case steady
    case go
}

var racoState = State.steady
racoState.rawValue

var nextState = State(rawValue: 2)
nextState?.rawValue
if nextState == .go{
    print("Go")
}
// Associated values and functions
enum Homework{
    case noHomework
    case InProgress(Int, Int)
    case done
    
    func simpleDescription() -> String{
        switch self{
        case .noHomework:
            return "No Homework :P"
        case .InProgress(let numcomplete, let numtotal):
            return "Complete \(numcomplete) out of Total \(numtotal)"
        case .done:
            return "Done"
        }
    }
}

var myHomeworkStatus = Homework.InProgress(6, 10)
var myHomeworkStatus2 = Homework.InProgress(7, 30)
myHomeworkStatus.simpleDescription()
myHomeworkStatus2.simpleDescription()

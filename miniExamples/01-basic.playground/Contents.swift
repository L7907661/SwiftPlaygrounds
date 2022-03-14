import UIKit

var greeting = "Hello!"
print("Good morning")

var myVaruable = 45   // Explicitly Type
let myConstant = 50  //Inferred Type
// myConstant = 100 <-- this will not work
type(of: myConstant)

let scores = [45, 32, 54, 3, 21, 83] //can't change constant; append will not work
var totalPassing = 0

for score in scores {
    if score >= 60 {
        totalPassing += 1
    }
}
totalPassing

for i in 1...3 { //1..<3
    print(i)
}
totalPassing = 0
for j in 0..<scores.count {
    if scores[j] >= 30 {
        totalPassing += 1
    }
}
totalPassing

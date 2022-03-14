// We already know about constants vs variables but there is another choice always present.

import Darwin
var x = 7
var f: Float = 7
let dave = "Dave"
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals
var optionalFloat: Float?
var requireFloat: Float
var implicitlyUnwrappedOptional: Float!
type(of: optionalFloat)
type(of: requireFloat)
//optionalFloat = 3.1
//print("optionalFloat = \(optionalFloat)")
//print("optionalFloat = \(optionalFloat!)") not work
requireFloat = 2.3
print("requireFloat = \(requireFloat)")
implicitlyUnwrappedOptional = 0.5
print("implicitlyUnwrappedOptional = \(implicitlyUnwrappedOptional)")
var other: Float = implicitlyUnwrappedOptional
other
// Optionals with forced unwrapping
let number = "7"
let name = "Liao"

var optionalThatIsNotNil: Int? = Int(name)
print(optionalThatIsNotNil)
var optionalThatIsNil: Int = Int(number)!
print(optionalThatIsNil)







// Part 2.
// Views in a Playground + Optional Chaining
import UIKit

var b = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100 ))
b.backgroundColor = UIColor.red
b.setTitle("Press me", for: UIControl.State.normal)
print(b.titleLabel!)
print(b.titleLabel!.text)
print(b.titleLabel?.text)
print(b.titleLabel!.text!)



// Optional Binding

if let temp = Int(number) {
    print("temp exist \(temp)")
}else{
    print("There is no temp value")
}

if let temp = Int(name) {
    print("temp exist \(temp)")
}else{
    print("There is no temp name value")
}


// Implicitly Unwrapped Optionals <-- on previous part


//Casting
var someAny: Any = 7
var someInt: Int
var anotherAny: Any
var anotherInt: Int?
//someAny = 7
someInt = someAny as! Int //as! means force wrap. Developer know it will work, if not the CRASH case

anotherAny = someInt as Any //as means compiler know it will work, if not the CRASH case
anotherInt = someAny as? Int //as? means this might work. Developer not know. It's safely write nil

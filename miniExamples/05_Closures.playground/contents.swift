var values = [10, 5, 2, 8, 3, 6, 1, 1000]

// Verbose Closure
var numberOver5 = values.reduce(0, {(runningTotol: Int, currentTotal: Int) -> Int in
    return currentTotal > 5 ? runningTotol + 1: runningTotol
})
numberOver5



// Closure parameter name shorthand and trailing closure
//var numberOver6 = values.reduce(0) {(runningTotol: Int, currentTotal: Int) -> Int in
//    return currentTotal > 6 ? runningTotol + 1 : currentTotal
//}
//same
//var numberOver6 = values.reduce(0) {(runningTotol, currentTotal) in
//    currentTotal > 6 ? runningTotol + 1 : currentTotal
//}
//work but not recommend
//var numberOver6 = values.reduce(0) {
//    $1 > 6 ? $0 + 1 : $0
//}


// A Closure using a closure for a variable
//reduce initial running totol (mostly 0), arg (a closure {})
func numValuesOverLimit(_ values: [Int], limit threshold: Int) -> Int {
        return values.reduce(0) {(runningTotol: Int, currentTotal: Int) -> Int in
                currentTotal > threshold ? runningTotol + 1 : runningTotol
        }
    
}
    
numValuesOverLimit(values, limit: 5)
numValuesOverLimit(values, limit: 9)


// Comparing func and closure syntax
func asAFunc(_ someString: String, _ someNumber: Int) -> String {
  return String(repeating: someString, count: someNumber)
}
let asAClosure = {(_ someString: String, _ someNumber: Int) -> String in
  return String(repeating: someString, count: someNumber)
}
asAFunc("Holy ", 3)
asAClosure("Holy ", 3)

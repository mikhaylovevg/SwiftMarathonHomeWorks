import Foundation

// #1
func example(_ closure: () -> ()) {

    for temp in 1...10 {
        print("temp = \(temp)")
    }
    closure()
}

example() {print("This is closure")}


// #2

let integers = [5, 3, 10, 99, 41, 409, 33, -3, 16, 99]

var sortedInt = [Int]()

//sortedInt = integers.sorted(by: { (a: Int, b: Int) -> Bool in return a > b})
//sortedInt = integers.sorted(by: {a, b in return a > b})
//sortedInt = integers.sorted(by: {a, b in a < b})
//sortedInt = integers.sorted(by: {$0 > $1})
//sortedInt = integers.sorted() {$0 > $1}
//sortedInt = integers.sorted {$0 > $1}

sortedInt = integers.sorted(by: >)
sortedInt

sortedInt = integers.sorted {$0 < $1}
sortedInt


// #3

func minMax (_ array: [Int], _ closure: (Int?, Int) -> Bool) -> Int {
    
    var optional : Int?
    for value in array {
        if closure(optional, value) {
            optional = value
        }
    }
    return optional ?? 0
}

let minValue = minMax(integers) {
    $0 == nil || $1 < $0!
}
minValue

let maxValue = minMax(integers) {
    $0 == nil || $1 > $0!
}
maxValue


// #4

let str = "ADnrfjvnfaer22198!!@.MJdw()"

var letters = [String]()

for temp in str.characters {
    letters.append(String(temp))
}
letters

//var lettersOfStr = Array(str.characters)

//var sortArray = letters.sorted(by: >)

func priority(_ str: String) -> Int {
    
    switch str.lowercased() {
        
    case "a", "e", "i", "o", "u", "y": return 0
    case "a"..."z": return 1
    case "0"..."9": return 2
        
    default: return 3
    }
}

/*
let a = "1"
let b = "w"

switch (priority(a), priority(b)) {
case let(x,y) where x < y: print(a)
case let(x,y) where x > y: print(b)
default: print(a <= b ? a : b)
}
*/

let sortedArray = letters.sorted {
    
    switch (priority($0), priority($1)) {
        
    case let(x, y) where x < y: return true
    case let(x, y) where x > y: return false
        
    default: return $0.lowercased() <= $1.lowercased()
    }
}
print(sortedArray)

//let sorted = letters.sorted {priority($0) < priority($1)}


// #5

let stringArray = ["a", "e", "M", "W", "q", "Z"]

func minMax (_ array: [String], _ closure: (String?, String) -> Bool) -> String {
    
    var optional : String?
    for value in array {
        if closure(optional, value) {
            optional = value
        }
    }
    return optional == nil ? "" : optional!
}

let minString = minMax(stringArray) {
    $0 == nil || $1 < $0!
}
minString

let maxString = minMax(stringArray) {
    $0 == nil || $1 > $0!
}
maxString



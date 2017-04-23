import Foundation

// #1
let firstString  = "555"
let secondString = "and"
let thirdString  = "1000"
let fourthString = "53s"
let fifthString  = "45"

var sumOfStrings = 0

sumOfStrings += (Int(firstString)  ?? 0)
sumOfStrings += (Int(secondString) ?? 0)
sumOfStrings += (Int(thirdString)  ?? 0)
sumOfStrings += (Int(fourthString) ?? 0)
sumOfStrings += (Int(fifthString)  ?? 0)

let num1 = (Int(firstString) == nil)  ? "nil" : firstString
let num2 = (Int(secondString) == nil) ? "nil" : secondString
let num3 = (Int(thirdString) == nil)  ? "nil" : thirdString
let num4 = (Int(fourthString) == nil) ? "nil" : fourthString
let num5 = (Int(fifthString) == nil)  ? "nil" : fifthString

// interpolate 

print("\(num1) + \(num2) + \(num3) + \(num4) + \(num5) = \(sumOfStrings)")

// concatenate

var concatenate = num1
concatenate += " + " + num2
concatenate += " + " + num3
concatenate += " + " + num4
concatenate += " + " + num5
concatenate += " = " + String(sumOfStrings)

print((num1) + " + " + (num2) + " + " + (num3) + " + " + (num4) + " + " + (num5) + " = " + String(sumOfStrings))

// #2
let unicode1 : Character = "\u{262d}\u{20e0}"
let unicode2 : Character = "\u{2622}"
let unicode3 : Character = "\u{262f}"
let unicode4 : Character = "\u{2764}\u{20e0}"
let unicode5 : Character = "\u{26a3}"

let stringOfUnicode = "\(unicode1) \(unicode2) \(unicode3) \(unicode4) \(unicode5)"
print(stringOfUnicode)
print("\(stringOfUnicode.characters.count) elements in Swift")
print("\((stringOfUnicode as NSString).length) elements in Objective-C")

//#3
let englishAlphabet = "abcdefghijklmnopqrstuvwxyz"
let letter : Character = "c"
var i = 0

for temp in englishAlphabet.characters {

    if temp == letter {
        
        print("Letter '\(letter)' number in alphabet is \(i)")
        
    }
    i += 1
}


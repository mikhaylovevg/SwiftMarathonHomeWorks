
// #1
let firstString  = "555"
let secondString = "and"
let thirdString  = "1000"
let fourthString = "53s"
let fifthString  = "45"

var sumOfStrings = 0

if Int(firstString) != nil {
    sumOfStrings = sumOfStrings + Int(firstString)!
} else {
    print("firstString could not be converted to an integer")
}

if Int(secondString) != nil {
    sumOfStrings = sumOfStrings + Int(secondString)!
} else {
    print("secondString could not be converted to an integer")
}

if let thirdNumber = Int(thirdString) {
    sumOfStrings = sumOfStrings + thirdNumber
} else {
    print("thirdString could not be converted to an integer")
}

if let fourthNumber = Int(fourthString) {
    sumOfStrings = sumOfStrings + fourthNumber
} else {
    print("fourthString could not be converted to an integer")
}

if Int(fifthString) != nil {
    sumOfStrings = sumOfStrings + Int(fifthString)!
} else {
    print("fifthString could not be converted to an integer")
}

print("Sum of strings, could be converted to an integer = \(sumOfStrings)")

// #2
var statusTuple : (statusCode: Int, message: String?, errorMessage: String?)
statusTuple = (216, "It's OK!", nil)

if statusTuple.statusCode >= 200 && statusTuple.statusCode < 300 {
    print(statusTuple.message!)
} else {
    print(statusTuple.errorMessage!)
}

statusTuple = (404, nil, "ERROR!")

if statusTuple.1 != nil {
    print(statusTuple.1!)
} else {
    print(statusTuple.2!)
}

// #3
typealias StudentTuple = (name: String, carNumber: Int?, examResult: Int?)

let student1 : StudentTuple = ("Max", nil, 5)
let student2 : StudentTuple = ("Iliya", 542, 4)
let student3 : StudentTuple = ("Kirill", 4012, nil)
let student4 : StudentTuple = ("Mark", nil, nil)
let student5 : StudentTuple = ("Volodya", 333, 2)

print("Student's name is \(student1.name)")
if student1.carNumber != nil {
    print("He have a car, it's number is \(student1.carNumber!)")
} else {
    print("He don't have a car")
}
if student1.examResult != nil {
    print("Her exam result is \(student1.examResult!)")
} else {
    print("He doesn't take the exam")
}

print("Student's name is \(student2.name)")
if student2.carNumber != nil {
    print("He have a car, it's number is \(student2.carNumber!)")
} else {
    print("He don't have a car")
}
if student2.examResult != nil {
    print("Her exam result is \(student2.examResult!)")
} else {
    print("He doesn't take the exam")
}

print("Student's name is \(student3.name)")
if student3.carNumber != nil {
    print("He have a car, it's number is \(student3.carNumber!)")
} else {
    print("He don't have a car")
}
if student3.examResult != nil {
    print("Her exam result is \(student3.examResult!)")
} else {
    print("He doesn't take the exam")
}

print("Student's name is \(student4.name)")
if let tempCar = student4.carNumber {
    print("He have a car, it's number is \(tempCar)")
} else {
    print("He don't have a car")
}
if let tempExam = student4.examResult {
    print("Her exam result is \(tempExam)")
} else {
    print("He doesn't take the exam")
}

print("Student's name is \(student5.name)")
if let tempAnyCar = student5.carNumber {
    print("He have a car, it's number is \(tempAnyCar)")
} else {
    print("He don't have a car")
}
if let tempAnyExam = student5.examResult {
    print("Her exam result is \(tempAnyExam)")
} else {
    print("He doesn't take the exam")
}

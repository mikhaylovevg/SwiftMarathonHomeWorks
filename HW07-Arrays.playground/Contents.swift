
// #1
let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for days in daysInMonth {
    print("Days = \(days)")
}

let monthName = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for i in 0..<daysInMonth.count {
    print("\(monthName[i]) have \(daysInMonth[i]) days")
}

var monthTuple = [(name : String, days : Int)]()

for i in 0..<daysInMonth.count {
    monthTuple.append((monthName[i], daysInMonth[i]))
}

for month in monthTuple {
    print("\(month.name) have \(month.days) days")
}

let birthday : (name: String, days: Int) = ("December", 15)

var sumDays = birthday.days

var temp = 0
/* //for loops with break
for month in monthTuple {
    if month.name == birthday.name {
        break
    }
    sumDays += month.days
    temp += 1
}
print("My birthday in \(sumDays) day on the beginning of the year")
*/

for i in 0..<monthTuple.count {
    if monthTuple[i].name == birthday.name {
        temp = i
    }
}

for i in 0..<temp {
    sumDays += monthTuple[i].days
}
print("My birthday in \(sumDays) day on the beginning of the year")


// #2
let optionalInt : [Int?] = [555, nil, 1000, nil, 45]

var sumForsedUnwrup = 0
for optional in optionalInt {
    if optional != nil {
        sumForsedUnwrup += optional!
    }
}
print("Sum of optional integer in array is \(sumForsedUnwrup)")

var sumOptionalBind = 0
for optional in optionalInt {
    if var temp = optional {
        sumOptionalBind += temp
    }
}
print("Sum of optional integer in array is \(sumOptionalBind)")

var sumQuestionMark = 0
for i in 0..<optionalInt.count {
    sumQuestionMark += optionalInt[i] ?? 0
}
print("Sum of optional integer in array is \(sumQuestionMark)")

//3
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var array = [String]()

for index in alphabet.characters {
    array.insert(String(index), at: 0)
}
array

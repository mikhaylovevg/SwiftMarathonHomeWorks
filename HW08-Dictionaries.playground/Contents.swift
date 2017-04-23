// #1
var journalStudent = ["Ivanov Ivan" : 4, "Petrenko Petr" : 2, "Maximov Max" : 5, "Andreev Andr" : 3, "Markov Mark" : 2]

journalStudent["Petrenko Petr"] = 4
journalStudent.updateValue(5, forKey: "Markov Mark")

journalStudent["Dimov Dima"] = 3
journalStudent["Legov Oleg"] = 5

journalStudent["Ivanov Ivan"] = nil
journalStudent.removeValue(forKey: "Andreev Andr")

journalStudent

var totalScore = 0
for value in journalStudent.values {
    totalScore += value
}

let averageScore = Double(totalScore) / Double(journalStudent.count)

print("Total score of students is \(totalScore)")
print("Average score of students is \(averageScore)")

// #2
let daysOfMonth = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]

for (month, days) in daysOfMonth {
    print("\(month) have \(days) days")
}

for keyMonth in daysOfMonth.keys {
    print("\(keyMonth) have \(daysOfMonth[keyMonth]!) days")
}

// #3
var chessBoard = [String : Bool]()

let letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
let numbers = ["1", "2", "3", "4", "5", "6", "7", "8"]

for i in 1...letters.count {
    for j in 1...numbers.count {
        var cell = letters[i - 1] + numbers[j - 1]
        /*
        var colorCell = ((i + j) % 2 != 0)
        /*
        if (i + j) % 2 == 0 {
            colorCell = false
        }  else {
            colorCell = true
        }
        */
        */
        chessBoard [cell] = ((i + j) % 2 != 0)
    }
}

chessBoard ["d5"]

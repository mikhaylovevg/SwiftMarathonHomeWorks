
// #1
struct StudentStruct {
    let name    : String
    let secondName : String
    let birthYear : Int
    var middleScore : Double
}

let studStruct1 = StudentStruct(name: "Dima", secondName: "Ivanov", birthYear: 1993, middleScore: 4.3)
let studStruct2 = StudentStruct(name: "Petr", secondName: "Petrov", birthYear: 1995, middleScore: 3.7)
let studStruct3 = StudentStruct(name: "Ivan", secondName: "Ivanov", birthYear: 1997, middleScore: 3.2)
let studStruct4 = StudentStruct(name: "Anna", secondName: "Sedova", birthYear: 1996, middleScore: 4.7)
let studStruct5 = StudentStruct(name: "Max", secondName: "Andreev", birthYear: 1990, middleScore: 4.0)

let journal = [studStruct1, studStruct2, studStruct3, studStruct4, studStruct5]

// #2
func output(_ array: [StudentStruct]) {
    for i in 0..<array.count {
        print("\(i + 1). \(array[i].secondName) \(array[i].name), year: \(array[i].birthYear), score: \(array[i].middleScore)")
    }
    print()
}

output(journal)

// #3
let sortedJournal = journal.sorted(by: {$0.middleScore > $1.middleScore})

print("Sorted journal by score:")
output(sortedJournal)

// #4
let sortedByName = journal.sorted() {
    if $0.secondName == $1.secondName {
        return $0.name < $1.name
    }
    return $0.secondName < $1.secondName
}

print("Sorted journal by name:")
output(sortedByName)

// #5
var changedJournal = journal

for i in 0..<changedJournal.count {
    changedJournal[i].middleScore = 5.0
}

print("Origin journal:")
output(journal)
print("Change score in journal:")
output(changedJournal)


// #6
class StudentClass {
    let name : String
    let secondName : String
    let birthYear : Int
    var middleScore : Double
    
    init(name: String, secondName: String, birthYear: Int, middleScore: Double) {
        self.name = name
        self.secondName = secondName
        self.birthYear = birthYear
        self.middleScore = middleScore
    }
}

let studClass1 = StudentClass(name: "Bob", secondName: "Bobrov", birthYear: 1987, middleScore: 3.2)
let studClass2 = StudentClass(name: "Serzh", secondName: "Bobrov", birthYear: 1990, middleScore: 4.1)
let studClass3 = StudentClass(name: "Inna", secondName: "Bobrova", birthYear: 1993, middleScore: 4.4)
let studClass4 = StudentClass(name: "Elena", secondName: "Bobrova", birthYear: 1990, middleScore: 4.9)

let journalClass = [studClass1, studClass2, studClass3, studClass4]

func outputClass (_ array: [StudentClass]) {
    for i in 0..<array.count {
        print ("\(i + 1). \(array[i].secondName) \(array[i].name), year: \(array[i].birthYear), score: \(array[i].middleScore)")
    }
    print()
}

outputClass(journalClass)

let scoreSorted = journalClass.sorted(by: {$0.middleScore > $1.middleScore})

print("Sorted journal by score:")
outputClass(scoreSorted)

let nameSorted = journalClass.sorted() {
    if $0.secondName == $1.secondName {
        return $0.name < $1.name
    }
    return $0.secondName < $1.secondName
}

print("Sorted journal by name:")
outputClass(nameSorted)

let changedJournalClass = journalClass

for student in changedJournalClass {
    student.middleScore = 2.0
}

print("Origin journal:")
outputClass(journalClass)
print("Change score in journal:")
outputClass(changedJournalClass)

// #7


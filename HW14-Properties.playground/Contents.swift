
import Foundation

// #1
struct Student {
    
    struct Birthday {
        let date, month, year : Int
    }
    
    var firstName : String {
        
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        
        didSet {
            print("will set " + firstName + " instead of " + oldValue)
            
            firstName = firstName.capitalized
        }
    }
    
    var secondName : String {
        
        didSet {
            secondName = secondName.capitalized
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + secondName
        }
        
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                secondName = words[1]
            }
            
        }
    }

// #2
    let birthday : Birthday
       
    var yearsOld : Int {
        get {
            return (2017 - birthday.year)
        }
    }
        
    var studyYears : Int {
        get {
            if yearsOld <= 6 {
                return 0
            } else {
                return yearsOld - 6
            }
        }
    }
}


var firstStudent = Student(firstName: "alex", secondName: "orlov", birthday : Student.Birthday(date: 15, month: 12, year: 1999))
var secondStudent = Student(firstName: "Maxim", secondName: "Forest", birthday : Student.Birthday(date: 01, month: 02, year: 2013))

firstStudent.firstName = "Max"
firstStudent.fullName

firstStudent.secondName = "Mihailov"
firstStudent.fullName

firstStudent.fullName = "ben stiLLeR"
firstStudent.firstName
firstStudent.secondName
firstStudent.fullName

firstStudent.yearsOld
firstStudent.studyYears

secondStudent.yearsOld
secondStudent.studyYears

// #3 & #4

struct Line {
    
    struct Point {
        var x, y: Double
    }
    
    var pointA: Point
    var pointB: Point
    
    var middlePoint: Point {
        
        get {
            return Point(x: (pointA.x + pointB.x) / 2, y: (pointA.y + pointB.y) / 2)
        }
        
        set {
            let deltaX = newValue.x - middlePoint.x
            let deltaY = newValue.y - middlePoint.y
            
            pointA = Point(x: pointA.x + deltaX, y: pointA.y + deltaY)
            pointB = Point(x: pointB.x + deltaX, y: pointB.y + deltaY)
            
        }
    }
    
    var length: Double {
        get {
            return sqrt(pow(pointB.x - pointA.x, 2) + pow(pointB.y - pointA.y, 2))
        }
        
        set {
            let newX = pointA.x + (pointB.x - pointA.x) * newValue / length
            let newY = pointA.y + (pointB.y - pointA.y) * newValue / length
            pointB = .init(x: newX, y: newY)
        }
    }
}

var firstLine = Line(pointA: Line.Point(x: 1.0, y: 2.0), pointB: Line.Point(x: 5.0, y: 6.0))

firstLine.middlePoint
firstLine.length
firstLine.middlePoint = .init(x: 4, y: 4)
firstLine.length = 10

firstLine = Line(pointA: Line.Point(x: 0.0, y: 4.0), pointB: Line.Point(x: 0.0, y: 10))
firstLine.middlePoint
firstLine.length
firstLine.length = 9
firstLine.middlePoint = .init(x: 0, y: 0)


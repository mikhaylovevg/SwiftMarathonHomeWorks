
// #1

var textTuple = (vowel : 0, consonant : 0, number : 0, symbol : 0)

let text = "the example above calculates the value of one number to the power of another (in this case, 3 to the power of 10); it multiplies a starting value of 1 (that is, 3 to the power of 0) by 3, ten times, using a closed range that starts with 1 and ends with 10."
text.characters.count

for char in text.characters {
    switch char {
    
    case "a", "e", "i", "o", "u":
        textTuple.vowel += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
         "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        textTuple.consonant += 1
    case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
        textTuple.number += 1
    case ".", ",", ";", ":", "(", ")":
        textTuple.symbol += 1
            
    default :
        break
    }
}

print("Text have \(textTuple.vowel) vowels, \(textTuple.consonant) consonants, \(textTuple.number) numbers and \(textTuple.symbol) symbols")

// #2 
let age = 30

switch age {
case 0...2:
    print("baby")
case 3...6:
    print("child")
case 7...17:
    print("pupil")
case 18...23:
    print("student")
case 24...60:
    print("man")
case 61...99:
    print("old man")
default:
    print("death")
}

// #3

let student = (name : "Игорь", middleName : "Олегович", surName : "Захаров")

switch student {
    
case (let name, _, _) where name.hasPrefix("А") || name.hasPrefix("О"):
    print("Hello, \(student.name)")
case (_, let middle, _) where middle.hasPrefix("В") || middle.hasPrefix("Д"):
    print("Hello, \(student.middleName)")
case (_, _, let sur) where sur.hasPrefix("Е") || sur.hasPrefix("З"):
    print("Hello, \(student.surName)")
default:
    print("Hello, " + (student.surName) + " " + (student.name) + " " + (student.middleName))
}

// #4
let firstShip  = (x:"a", y:1, w:1, h:2)
let secondShip = (x:"d", y:7, w:1, h:1)


let point = ("d", 7)

switch point {
case (firstShip.x, firstShip.y):
    print("wound")
case (secondShip.x, secondShip.y) :
    print("dead")
default:
    print("beside")
}
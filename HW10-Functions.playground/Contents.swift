
// #1

func final() -> String {
    return "\u{1F3C1}"
}

func cup() -> String {
    return "\u{1F3C6}"
}

print(final() + cup())


// #2

func whatColor(_ letter: String, _ number: Int) -> String {
    
    let letters = ["a":1, "b":2, "c":3, "d":4, "e":5, "f":6, "g":7, "h":8]
    
    return ((letters[letter]! + number) % 2 != 0) ? "white" : "black"
}

let colorBox = whatColor("a", 5)
print("Color of box is " + colorBox)

// #3

func reverse(array: [Int]) -> [Int] {
    
    var result = [Int]()
    for i in array {
        result.insert(i, at: 0)
    }
    return result
}

reverse(array: [2, 5, 7, 10, 155])

func reverse(sequence: Int...) -> [Int] {
    return reverse(array: sequence)
}

reverse(sequence : 6, 7, 1, 0, 0, 100, 333)


// #4

var intArray = [1, 3, 5, 7, 9, 11]

func reverseArray(_ array: inout [Int]) {
    
    var temp = [Int]()
    
    for i in array {
       temp.insert(i, at: 0)
    }
    array = temp
}

reverseArray(&intArray)


// #5
let numbers = ["0":"zero", "1":"one", "2":"two", "3":"three", "4":"four", "5":"five", "6":"six", "7":"seven", "8":"eight", "9":"nine"]
func modific(string: String) -> String {
    
    var temp = String()
    
    for char in string.characters {
        
        switch char {
            
        case ".", ",", "!", "?", ":", ";", "(", ")":
            continue
            
        case "a", "e", "i", "o", "u", "y":
            temp.append(String(char).uppercased())
            
        case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z", "Y", "Z":
            temp.append(String(char).lowercased())
        
        case "0"..."9": temp.append(numbers[String(char)]!)
            
        default:
            temp.append(String(char))
        }
    }
    return temp
}

let str = "012a,B.CDeFghigklmnopuXYZ!()"

modific(string: str)


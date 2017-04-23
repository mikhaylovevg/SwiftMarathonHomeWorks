
// #1
enum NameChess : String {
    case king   = "king"
    case qween  = "qween"
    case bishop = "bishop"
    case knight = "knight"
    case rook   = "rook"
    case pawn   = "pawn"
}

enum Chessman {
    case king   (color: Color, position: (String, Int), name: NameChess)
    case qween  (color: Color, position: (String, Int), name: NameChess)
    case bishop (color: Color, position: (String, Int), name: NameChess)
    case knight (color: Color, position: (String, Int), name: NameChess)
    case rook   (color: Color, position: (String, Int), name: NameChess)
    case pawn   (color: Color, position: (String, Int), name: NameChess)
    
    enum Color : String {
        case white = "white"
        case black = "black"
    }
}

let firstFigure  = Chessman.king (color: .black, position: ("d", 1), name: .king)
let secondFigure = Chessman.qween(color: .white, position: ("d", 2), name: .qween)
let thirdFigure  = Chessman.king (color: .white, position: ("e", 3), name: .king)

let checkmate = [firstFigure, secondFigure, thirdFigure]

firstFigure

// #2


func chessPrint (figure : Chessman) {
    
    switch figure {

    case .king (let color, let position, let name):
        print("\(color.rawValue) \(name.rawValue) on \(position.0)\(position.1)")
    case .qween (let color, let position, let name):
        print("\(color.rawValue) \(name.rawValue) on \(position.0)\(position.1)")
    case .bishop (let color, let position, let name):
        print("\(color.rawValue) \(name.rawValue) on \(position.0)\(position.1)")
    case .knight (let color, let position, let name):
        print("\(color.rawValue) \(name.rawValue) on \(position.0)\(position.1)")
    case .rook (let color, let position, let name):
        print("\(color.rawValue) \(name.rawValue) on \(position.0)\(position.1)")
    case .pawn (let color, let position, let name):
        print("\(color.rawValue) \(name.rawValue) on \(position.0)\(position.1)")
    }
}

func arrOfChess (_ array: [Chessman]) {
    for i in array {
        chessPrint(figure: i)
    }
}

arrOfChess(checkmate)


// #3
func chessboardPrint () -> () {

    //let letters = ["a":1, "b":2, "c":3, "d":4, "e":5, "f":6, "g":7, "h":8]
    
    var array = [[String]]()
    
    for i in 1...8 {
        for j in 1...8 {
            array[i[j]] += ((i + j % 2 == 0) ? "⬛️" : "⬜️")
        }
        
    }
    
    
    
    
}













// #1
let day = 15
let month = 12

let amountSeconds = (6 * 31 + 4 * 30 + 28 + (day - 1)) * 24 * 60 * 60
print("Seconds = \(amountSeconds)")

// #2
if month <= 6 {
    if month <= 3 {
        print("I quarter of the year")
    } else {
        print("II quarter of the year")
    }
} else {
    if month <= 9 {
        print("III quarter of the year")
    } else {
        print("IV quarter of the year")
    }
}

// #4
let (a, b, c, d, e, f, g, h) = (1, 2, 3, 4, 5, 6, 7, 8)

let point = (d, 6)

if (point.0 + point.1) % 2 == 0{
    print("Color of box \(point) is black")
} else {
    print("Color of box \(point) is white")
}
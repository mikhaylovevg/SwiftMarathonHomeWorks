
print("Int8   = {\(Int8.min)..\(Int8.max)}")
print("UInt8  = {\(UInt8.min)..\(UInt8.max)}")
print("Int16  = {\(Int16.min)..\(Int16.max)}")
print("UInt16 = {\(UInt16.min)..\(UInt16.max)}")
print("Int32  = {\(Int32.min)..\(Int32.max)}")
print("UInt32 = {\(UInt32.min)..\(UInt32.max)}")
print("Int64  = {\(Int.min)..\(Int.max)}")
print("UInt64 = {\(UInt64.min)..\(UInt64.max)}")

let integerNumber   = 13
let floatNumber     : Float = 30.59129
let doubleNumber    = 7.02484103219

let sumOfInt    = integerNumber + Int(floatNumber) + Int(doubleNumber)
let sumOfFloat  = Float(integerNumber) + floatNumber + Float(doubleNumber)
let sumOfDouble = Double(integerNumber) + Double(floatNumber) + doubleNumber

if Double(sumOfInt) > sumOfDouble {
    print("Sum of Integer more than sum of Double")
} else {
    print("Sum of Double more than sum of Integer")
}


var mySportsResult = (pushups:10, pullups:2, squats:25)
print(mySportsResult)

print("My maximum pushups: \(mySportsResult.pushups)")
print("My maximum pullups: \(mySportsResult.pullups)")
print("My maximum squats:  \(mySportsResult.squats)")

mySportsResult.0
mySportsResult.pullups
mySportsResult.2

var friendSportsResult = (pushups:25, pullups:13, squats:40)

let tempTuple = mySportsResult
mySportsResult = friendSportsResult
friendSportsResult = tempTuple

let differenceSportsResult = (pushups:mySportsResult.0 - friendSportsResult.0,
                              pullups:mySportsResult.1 - friendSportsResult.1,
                              squats:mySportsResult.2 - friendSportsResult.2)

print(differenceSportsResult)

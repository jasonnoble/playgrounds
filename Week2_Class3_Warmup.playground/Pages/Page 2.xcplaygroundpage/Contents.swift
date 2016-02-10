/*:
## Page 2: Better functions

Our example on the [previous](@previous) page had hard-coded values that the functions used.

A better way to design our functions is to pass the params in.

[Previous](@previous)
*/

let milesPerGallon:Float = 18.4
let tankCapacityInGallons:Float = 14.1

// Q1: re-write: "func maxDistanceOnCurrentTank() -> Float" so that it takes all the params it needs
// A1: write code below
func maxDistanceOnCurrentTank(let gallonsRemaining:Float) -> Float {
    return milesPerGallon * gallonsRemaining
}

// Q2: re-write: "func canMakeIt() -> Bool" so that it takes all the params it needs
// A2: write code below

func canMakeIt(milesToDestination:Float, gallonsRemaining:Float) -> Bool {
    return maxDistanceOnCurrentTank(gallonsRemaining) > milesToDestination
}

//: NOTE: `canMakeIt` should still call `maxDistanceOnCurrentTank` - so it will take a

var gallonsRemaining:Float = 3.5
var milesToDestination:Float = 120

// A3: call your new `canMakeIt` function with the variables above
// A3: write code below
canMakeIt(milesToDestination, gallonsRemaining: gallonsRemaining)

// Q4: In your own words, why are the functions on this page better than on the ones on the previous page?
// A4: They don't rely on exterior knowledge, i.e. the data is passed in to make a decision

//: [Previous](@previous) - [Next](@next)

/*:
# Playground warm up

Week 2, Class 3

*Be sure you are seeing this text as HTML, not a comment.  If not goto **Editor** -> **Show Rendered Markup**.*

This file should be copied to your ~/workspace/swift_t1_2016/in_class/ folder before you start.

Use whatever resources you need to work through this playground.

## Page 1: Simple Functions

Please work your way through these examples.  Each page builds on the one before it, so don't skip ahead.

Write code when asked and answer all the questions in comments.

*/

// Q1: "let" designates what?
// A1: A constant
let milesPerGallon:Float = 18.4
let tankCapacityInGallons:Float = 14.1

// Q2: "var" designates what?
// A2: A variable
var gallonsRemaining:Float = 3.5
var milesToDestination:Float = 120

// Q3: Why does it make sense that the frist two are "let" and the last two "var"?
// A3: Miles per gallon and tank capacity will never change


// Q4: How many params does this take?
// A4: None
func maxDistanceOnCurrentTank() -> Float {
    return milesPerGallon * gallonsRemaining
}

// Q5: What does this function return?
// A5: A boolean
func canMakeIt() -> Bool {
    return maxDistanceOnCurrentTank() > milesToDestination
}

canMakeIt()


// Q6: All the code above works, but it is not very re-usable.  What could we do to make these functions more versitile / reusable?
// A6: Move it into a class


//: [Next](@next)

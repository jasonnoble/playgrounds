/*:
## Page 3: Loops and conditionals

Review the following code, answer the questions and re-write the function below.

[Previous](@previous)
*/

// Q1: What does this function return?
// A2: Nothing

// Q2: How else could we write this function signature?
// Q2: func sumEvenAndOdd(cc:Int)
func doAThing(cc:Int) {
    var aa = 0, bb = 0
    
    for ii in 0..<cc {
        if ii % 2 == 0 {
            aa += ii
        } else {
            bb += ii
        }
    }
    
    print("\(aa) \(bb)")
}

doAThing(10)
//doAThing(20)

// Q3: In your own words, what does the above function do?
// A3: Prints the sum of even and odd numbers up to the integer passed in

// Q4: What are your thoughts about the readability of the above function?  Is it obvious what it does?  How could you improve it?
// A4: I would use better named variables

// Q5: Put your money where your mouth is - write a new function, taking into account your last answer, that is more readable (easier to maintain).
// A5:

func sumEvenAndOddNumbers(maxNumber:Int) -> (Int, Int) {
    var evenNumberSum = 0, oddNumberSum = 0
    
    for number in 0..<maxNumber {
        if number % 2 == 0 {
            evenNumberSum += number
        } else {
            oddNumberSum += number
        }
    }
    return (evenNumberSum, oddNumberSum)
}

var (evens, odds) = sumEvenAndOddNumbers(10)
evens
odds

// Q6: Why do you think readability of code is imporant?
// A6: Makes it easier to understand what you're trying to do.


//: [Previous](@previous) - [Next](@next)

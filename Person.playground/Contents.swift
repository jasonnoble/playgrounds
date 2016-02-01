//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName = ""
    var lastName = ""
    var age = 0
    
    func input() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    
    func enterInfo() {
        print("What is the first name? ", terminator:"")
        firstName = input()
    }
    
    func printInfo() {
        print("First Name: \(firstName)")
    }
    
    func changeFirstName(newFirstName:String) {
        firstName = newFirstName
    }
}

extension Person: CustomStringConvertible {
    var description: String {
        return "\(firstName) \(lastName) \(age)"
    }
}

var newPerson = Person()
newPerson.firstName = "Ted"
newPerson.lastName = "Smith"
newPerson.age = 18

newPerson.changeFirstName("Paul")







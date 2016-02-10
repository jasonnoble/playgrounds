/*:
## Page 4: Working with Objects

Below is a very simple class used to track users.  

Answer the questions, and write the required code.

[Previous](@previous)
*/

// Q1: Why do we use "objects" to model software?
// A1: Makes it easy to model real world objects

// Q2: What is the differnce between a class and an instance?
// A2: The class is a general structure, while an instance is a specific instance of an instantiated class

// Q3: What do we call the functions that create new Objects for us?
// A3: Initializers

class User {
  var salutation:String
  var firstName:String
  var lastName:String
  var favoriteQuote:String? = "I ♡ Swift"
  var suffix:String?

  // Q4: Why does this only need two params?
  // A4: The favoriteQuote has an initial value
  init(salutation:String, firstName:String, lastName:String, suffix:String?=nil) {
    self.salutation = salutation
    self.firstName = firstName
    self.lastName = lastName
    self.suffix = suffix
  }


  init(salutation:String, firstName:String, lastName:String, suffix:String?=nil, favoriteQuote:String) {
    self.salutation = salutation
    self.firstName = firstName
    self.lastName = lastName
    self.favoriteQuote = favoriteQuote
    self.suffix = suffix
  }

  init(_ salutation:String, _ firstName:String, _ lastName:String, _ suffix:String?=nil, _ favoriteQuote:String?=nil) {
    self.salutation = salutation
    self.firstName = firstName
    self.lastName = lastName
    self.favoriteQuote = favoriteQuote
    self.suffix = suffix
  }

  func introduceYourself() -> String {
    return "My name is \(salutation) \(firstName) \(lastName) \(suffix ?? "") and I always say '\(favoriteQuote)'"
  }
}

// Q5: What is the name for the mechanism being used here: "String \(something)"
// A5: Interpolation


// Q6: Instanciate two User objects.  One with the default `favoriteQuote` one that has a non-default `favoriteQuote`.  Test that it worked.
// A6: Write code below.
let user1 = User(salutation:"Mr", firstName:"Jason", lastName: "Noble")
let user2 = User(salutation:"Mr", firstName:"Jason", lastName: "Noble", suffix: "III", favoriteQuote: "The rain in spain...")
let user3 = User("Mr", "Jason", "Noble", "")

user1.introduceYourself()
user2.introduceYourself()
user3.introduceYourself()

// Q7: Add a required "salutation" to the User object.  Update all `init()` and `introduceYourself()` accordingly.
// A7: Update the User class above.

// Q8: Add an optional "name suffix" to the User object.  (Jr, Sr, III, IV, etc) Update all `init()` and `introduceYourself()` accordingly.
// A8: Update the User class above.


//: [Previous](@previous) - [Next](@next)

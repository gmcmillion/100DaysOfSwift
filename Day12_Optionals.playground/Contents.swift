import UIKit

// (1) Handling missing data
var age: Int? = nil   // use ? to mean age is nothing for now
age = 38

// (2) Unwrapping optionals: use 'if let' for unwrapping in case no name is available yet
var name: String? = nil
if let unwrapped = name {
  print("\(unwrapped.count) letters")
} else {
  print("Missing name.\n")
}

// (3) Unwrapping w/ guard: use 'guard let' as an alternative to 'if let' to exit function, loop, or condition
func greet(_ name: String?) {
  guard let unwrapped = name else {
    print("You didn't provide a name!")
    return
  }
  
  print("Hello, \(unwrapped)!\n")
}

greet("Gregg")

// (4) Force Unwrapping - when you know for sure the value isnt nil
let str = "5"
let num = Int(str)! // force unwrap because we know for sure the string can convert "5"

// (5) Implicitly unwrapped optionals: might contain a value or they might be nil
// However, unlike regular optionals you don’t need to unwrap them in order to use them.
// You can use them as if they weren’t optional at all
let age2: Int! = nil

// (6) Nil Coalescing: unwraps an optional and returns the value inside if there is one
func username(for id: Int) -> String? {
  if id == 1 {
    return "Taylor Swift"
  } else {
    return nil
  }
}

// ?? will check the result from username, if its a string, itll be unwrapped and assigned to user
// otherwise if it returns nil, "Anonymous" will be assigned to user
let user = username(for: 15) ?? "Anonymous"

// (7) Optional Chaining
let names = ["John", "Paul", "George", "Ringo"]

// swift will check if 'first' is nil before moving on to uppercased()
let beatle = names.first?.uppercased()

// (8) Optional try (2 options: try? and try!)
enum PasswordError: Error {
  case obvious
}

func checkPassword(_ password: String) throws -> Bool {
  if password == "password" {
    throw PasswordError.obvious
  }
  return true
}

// Option 1: Use try? changes throwing functions into functions that return an optional
// If the function throws an error you’ll be sent nil as the result,
// otherwise you’ll get the return value wrapped as an optional.
if let result = try? checkPassword("password") {
  print("Result was \(result)")
} else {
  print("D'oh.")
}

// Option 2: Use try! when you know for sure that the function will not fail.
try! checkPassword("sekrit")
print("OK!")

// (9) Failable Initializers: an initializer that might work or might not
// Write these in your own structs and classes by using init?() rather than init()
struct Person {
  var id: String
  
  init?(id: String) {
    if id.count == 9 {
      self.id = id
    } else {
      return nil
    }
  }
}

// (10) Typecasting
class Animal { }
class Fish: Animal { }
class Dog: Animal {
  func makeNoise() {
    print("Woof!")
  }
}

// Swift makes this an array of type Animals
let pets = [Fish(), Dog(), Fish(), Dog()]

// Use as? to typecast and check if each pet is a Dog
for pet in pets {
  if let dog = pet as? Dog {
    dog.makeNoise()
  }
}

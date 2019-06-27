import UIKit

// (1) Writing Functions
func printHelp() {
  let message = "Welcome to MyApp!"
  print(message)
}
printHelp()

// (2) Accpeting Parameters
func square(number: Int) {
  print(number * number)
}
square(number: 8)

// (3) Returning Labels
func square2(number: Int) -> Int {
  return number * number
}
let result = square2(number: 8)
print(result)

// (4) Parameter Labels
func sayHello(to name: String) {
  print("Hello, \(name)!")
}
sayHello(to: "Taylor")

// (5) Omitting Parameter Labels
func greet(_ person: String) {
  print("Hello, \(person)!")
}
greet("Taylor")

// (6) Default Parameters
// nicely is the default in this case
func greet(_ person: String, nicely: Bool = true) {
  if nicely == true {
    print("Hello, \(person)!")
  } else {
    print("Oh no, it's \(person) again...")
  }
}
greet("Taylor")                 // uses default
greet("Taylor", nicely: false)  // doesnt use default

// (7) Variadic Functions (can accept any number of parameters of the same type)
func square(numbers: Int...) {
  for number in numbers {
    print("\(number) squared is \(number * number)")
  }
}
square(numbers: 1, 2, 3, 4, 5)

// (8) Writing Throwing Functions
enum PasswordError: Error {
  case obvious
}
// use throws and throw
func checkPassword(_ password: String) throws -> Bool {
  if password == "password" {
    throw PasswordError.obvious
  }
  
  return true
}

// (9) Running Throwing Functions
do {
  try checkPassword("password")   // use 'try' when calling throwing functions
  print("That password is good!")
} catch {
  print("You can't use that password.")
}

// (10) Inout Parameters
// All parameters passed into a Swift function are constants, so you can’t change them.
// If you want, you can pass in one or more parameters as 'inout'
func doubleInPlace(number: inout Int) {
  number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)   // need to use '&' when using inout
print(myNum)

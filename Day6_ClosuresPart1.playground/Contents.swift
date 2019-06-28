import UIKit

// (1) Creating basic closures
let driving = {
  print("I'm driving in my car")
}
driving()

// (2) Accepting parameters in a closure
let driving2 = { (place: String) in
  print("I'm going to \(place) in my car")
}
driving2("London")

// (3) Returing values from a closure
let drivingWithReturn = { (place: String) -> String in
  return "I'm going to \(place) in my car"
}
print(drivingWithReturn("Los Angeles"))

// (4) Closure as parameters
func travel(action: () -> Void) {
  print("I'm getting ready to go.")
  action()
  print("I arrived!")
}
travel(action: driving)

// (5) Trailing closure syntax
func travel2(action: () -> Void) {
  print("I'm getting ready to go.")
  action()
  print("I arrived!")
}

// since no parameters, we can remove the parens
travel2 {
  print("I'm driving in my car")
}


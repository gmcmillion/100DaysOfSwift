import UIKit

// (1) Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {   // accepts a closure as its parameter
  print("I'm getting ready to go.")
  action("London")
  print("I arrived!\n")
}

// trailing closure syntax
travel { (place: String) in
  print("I'm going to \(place) in my car")
}

// (2) Using closures as parameters when they return values
func travel2(action: (String) -> String) {
  print("I'm getting ready to go.")
  let description = action("London")
  print(description)
  print("I arrived!\n")
}

travel2 { (place: String) -> String in    // closure returns a string
  return "I'm going to \(place) in my car"
}

// (3) Shorthand parameter names
func travel3(action: (String) -> String) {
  print("I'm getting ready to go.")
  let description = action("London")
  print(description)
  print("I arrived!\n")
}

travel3 {
  "I'm going to \($0) in my car"
}

// (4) Closures with multiple parameters
func travel4(action: (String, Int) -> String) {
  print("I'm getting ready to go.")
  let description = action("London", 60)
  print(description)
  print("I arrived!\n")
}

travel4 {
  "I'm going to \($0) at \($1) miles per hour."
}

// (5) Returning closures from functions
func travel5() -> (String) -> Void {
  return {
    print("I'm going to \($0)\n")
  }
}

let result = travel5() // call travel to get back the closure
result("London")      // then call it as a function

// (6) Capturing values
func travel6() -> (String) -> Void {
  var counter = 1   // to capture how many times the closure has been called
  
  return {
    print("\(counter). I'm going to \($0)")
    counter += 1
  }
}

let result2 = travel6()
result2("London")
result2("London")
result2("London")
result2("London")
result2("London")
result2("London")

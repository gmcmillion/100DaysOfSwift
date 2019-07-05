import UIKit

// (1) Protocols - a way of describing what properties and methods something must have
protocol Identifiable {
  var id: String { get set }
}

// create a struct that conforms to the protocol
struct User: Identifiable {
  var id: String
}

func displayID(thing: Identifiable) {
  print("My ID is \(thing.id)")
}

// (2) Protocol Inheritance - One protocol can inherit from another
protocol Payable {
  func calculateWages() -> Int
}

protocol NeedsTraining {
  func study()
}

protocol HasVacation {
  func takeVacation(days: Int)
}

// a single protocol bringing the the other 3 into 1
protocol Employee: Payable, NeedsTraining, HasVacation { }

// (3) Extensions - allow you to add methods to existing types
// to make them do things they weren’t originally designed to do
// EX. adding squared method to INT
extension Int {
  func squared() -> Int {
    return self * self
  }
}

let number = 8
number.squared()

extension Int {
  var isEven: Bool {
    return self % 2 == 0
  }
}

// Ex. 2 Swift doesn’t let you add stored properties in extensions,
// so you must use computed properties instead.
extension Int {
  var isEven2: Bool {
    return self % 2 == 0
  }
}

// (4) Protocol Extensions - let you describe what methods something should have,
// but don’t provide the code inside.
// They are like regular extensions, except rather than extending a specific type
// like Int you extend a whole protocol so that all conforming types get your changes.
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
  func summarize() {
    print("There are \(count) of us:")
    
    for name in self {
      print(name)
    }
  }
}

pythons.summarize()
beatles.summarize()

// (5) Protocol-oriented Programming
protocol Identifiable2 {
  var id: String { get set }
  func identify()
}

extension Identifiable2 {
  func identify() {
    print("My ID is \(id).")
  }
}

struct User2: Identifiable2 {
  var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()

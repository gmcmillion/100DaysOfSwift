import UIKit

// (1) Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]

// (2) Sets (Random Order, Unique)
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// (3) Tuples
var name = (first: "Gregg", last: "Mcmillion")
name.0
name.first

// (4) Arrays vs. Sets vs. Tuples
// If you need: fixed collection of related values where each item has a precise position or name, use a TUPLE:
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// If you need: collection of values that must be unique, ability to check whether a specific item exists quickly, use a SET:
let set = Set(["aardvark", "astronaut", "azalea"])

// If you need: collection of values that can contain duplicates, or order of your items matters, use an ARRAY:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// (5) Dictionaries
let heights = [
  "Taylor Swift": 1.78,
  "Ed Sheeran": 1.73
]
heights["Taylor Swift"]   // read VALUE using KEY

// (6) Dictionary default values
let favoriteIceCream = [
  "Paul": "Chocolate",
  "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Gregg"] // doesnt exist, so nil
favoriteIceCream["Gregg", default: "Unknown"] // if doesnt exist, show Unknown instead of nil

// (7) Creating Empty Collections. Collections = Arrays, Sets, and Dictionaries
var teams = [String: String]()    // create an empty dictionary
teams["Paul"] = "Red"             // add key and value

var results = [Int]()   // create an empty array
results.append(2)       // add a value to array
results[0]

var words = Set<String>()   // create a new set for strings
var numbers = Set<Int>()    // create a new set for ints

// (8) Enumerations
enum Result {
  case success
  case failure
}
let result = Result.failure

// (9) Enum associated values. Allows addint details to enums
enum Activity {
  case bored
  case running(destination: String)
  case talking(topic: String)
  case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// (10) Enum Raw Values
// Planet stores Int values for each case
enum Planet: Int {
  case mercury
  case venus
  case earth
  case mars
}
let earth = Planet(rawValue: 2) // assigns earth value of 2

// Planet2 will assign mercury 1, and automatically count upwards, so earth is 3
enum Planet2: Int {
  case mercury = 1
  case venus
  case earth
  case mars
}



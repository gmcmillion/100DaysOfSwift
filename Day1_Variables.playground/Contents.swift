import UIKit

// (1) String variables
var str = "Hello, playground"
str = "Goodbye"

// (2) Integers
var age = 38
var population = 8_000_000

// (3) multiline strings
var str1 = """
This goes over
multiple
lines
"""

// Strings on newlines w/o the \n
var str2 = """
This goes \
over multiple \
new lines
"""

// (4) Doubles and booleans
var pi = 3.141
var bool = true

// (5) String interpolation
var score = 85
var str3 = "The test result is: \(score)"

// (6) Constants
let taylor = "swift"

// (7) Type Annotations
var str4 = "Hello playground"     // TYPE INFERENCE: swift infers type is a String
var album : String = "Reputation" // explicit about the type
var year : Int = 1998             // explicit about the type
var height : Double = 1.78        // explicit about the type
var taylorRocks : Bool = true     // explicit about the type

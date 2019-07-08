import UIKit

// (1) Variables and Constants
var name = "Gregg M"
name = "Marlyn C"

// (2) Types of Data
var name2: String
name2 = "Tim McGraw"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -8654.783333 // less accurate

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

// (3) Operators
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var a1 = 1.1
var b1 = 2.2
var c1 = a1 + b1

var name3 = "Tim McGraw"
var name4 = "Romeo"
var both = name3 + " and " + name4

// (4) String Interpolation
var name5 = "Tim McGraw"
var age5 = 25
var latitude5 = 36.166667

"Your name is \(name5), your age is \(age5), and your latitude is \(latitude5)"

// (5) Arrays
var evenNumbers = [2, 4, 6, 8]
var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var songs3: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

type(of: songs)
type(of: songs3)
songs[0]
songs[1]
songs[2]
var both2 = songs + songs2

var songs4 = [String]()
songs4 += ["Hello World"]

// (6) Dictionaries
var person = [
  "first": "Taylor",
  "middle": "Alison",
  "last": "Swift",
  "month": "December",
  "website": "taylorswift.com"
]

person["middle"]
person["month"]

// (7) Conditional Statements
var action: String
var person2 = "hater"

if person2 == "hater" {
  action = "hate"
} else if person2 == "player" {
  action = "play"
} else {
  action = "cruise"
}

// (8) Loops
for i in 1...10 {
  print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"
for _ in 1 ... 5 {
  str += " fake"
}
print(str)

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ... 3 {
  print("\(people[i]) gonna \(actions[i])")
}

// (9) Switch Case
let liveAlbums = 2
switch liveAlbums {
case 0:
  print("You're just starting out")
  
case 1:
  print("You just released iTunes Live From SoHo")
  
case 2:
  print("You just released Speak Now World Tour")
  
default:
  print("Have you done something new?")
}

let studioAlbums = 5
switch studioAlbums {
case 0...1:
  print("You're just starting out")
  
case 2...3:
  print("You're a rising star")
  
case 4...5:
  print("You're world famous!")
  
default:
  print("Have you done something new?")
}

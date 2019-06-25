import UIKit

// (1) Arithmetic Operators
let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// (2) Operator Overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42           // + can add
let fakers = "Fakers gonna "
let action = fakers + "fake"          // + can also concatenate
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf  // + also joins strings

// (3) Compound Assignment
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// (4) Comparison Operators
let firstScore2 = 6
let secondScore2 = 4
firstScore2 == secondScore2
firstScore2 != secondScore2
firstScore2 < secondScore2
firstScore2 >= secondScore2
"Taylor" <= "Swift"

// (5) Conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21 {
  print("Blackjack!")
}

if firstCard + secondCard == 21 {
  print("Blackjack!")
} else {
  print("Regular cards")
}

if firstCard + secondCard == 2 {
  print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
  print("Blackjack!")
} else {
  print("Regular cards")
}

// (6) Combining Conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {     // Logical AND
  print("Both are over 18")
}

if age1 > 18 || age2 > 18 {     // Logical OR
  print("One of them is over 18")
}

// (7) Ternary operator
let firstCard2 = 11
let secondCard2 = 10
print(firstCard2 == secondCard2 ? "Cards are the same" : "Cards are different")

// If above ternary operator was written as if/else
if firstCard2 == secondCard2 {
  print("Cards are the same")
} else {
  print("Cards are different")
}

// (8) Switch Statements
let weather = "sunny"
switch weather {
case "rain":
  print("Bring an umbrella")
case "snow":
  print("Wrap up warm")
case "sunny":
  print("Wear sunscreen")
default:
  print("Enjoy your day!")
}

switch weather {
case "rain":
  print("Bring an umbrella")
case "snow":
  print("Wrap up warm")
case "sunny":
  print("Wear sunscreen")
fallthrough               // continues on to next case
default:
  print("Enjoy your day!")
}

// (9) Range Operator
let score3 = 85

// ... means including final value 1...50 includes 50
// ..< means excluding final value 1..<50 excludes 50
switch score3 {
case 0..<50:
  print("You failed badly.")
case 50..<85:
  print("You did OK.")
default:
  print("You did great!")
}

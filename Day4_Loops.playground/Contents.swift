import UIKit

// (1) For loops
let count = 1...10
for number in count {
  print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
  print("\(album) is on Apple Music")
}

// Use underscore when you dont wanna use a constant
print("Players gonna ")
for _ in 1...5 {
  print("play")
}

// (2) While loops
var number = 1
while number <= 20 {
  print(number)
  number += 1
}
print("Ready or not, here I come!")

// (3) Repeat loops (like a DO WHILE loop)
var number2 = 1
repeat {
  print(number2)
  number2 += 1
} while number2 <= 20
print("Ready or not, here I come!")

// will never run
while false {
  print("This is false")
}

// will run at least once
repeat {
  print("This is false")
} while false

// (4) Exiting loops (use break)
var countDown = 10
while countDown >= 0 {
  print(countDown)
  if countDown == 4 {
    print("I'm bored. Let's go now!")
    break
  }
  
  countDown -= 1
}

// (5) Exiting multiple loops
// 2 things: give outerloop a label, then use a break statement in inner loop
outerLoop: for i in 1...10 {
  for j in 1...10 {
    let product = i * j
    print ("\(i) * \(j) is \(product)")
    
    if product == 50 {
      print("It's a bullseye!")
      break outerLoop
    }
  }
}

// (6) Skipping items (ex. skips odd numbers)
for i in 1...10 {
  if i % 2 == 1 {
    continue    // use continue to skip
  }
  
  print(i)
}

// (7) Infinite loops
var counter = 0
while true {
  print(" ")
  counter += 1
  
  if counter == 273 {
    break // to end infinite loop
  }
}

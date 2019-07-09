import UIKit

// (1) Functions
// Ex: 1
func favoriteAlbum() {
  print("My favorite is Fearless\n")
}
favoriteAlbum()

// Ex: 2
func favoriteAlbum(name: String) {
  print("My favorite is \(name)\n")
}
favoriteAlbum(name: "Fearless")

// Ex: 3
func printAlbumRelease(name: String, year: Int) {
  print("\(name) was released in \(year)")
}
printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

// Ex: 4 - for renaming internal parameter name
func countLettersInString(myString str: String) {
  print("\nThe string \(str) has \(str.count) letters.\n")
}
countLettersInString(myString: "Hello")

// Ex: 5 - when you have no external parameter name, use underscore
func countLettersInString(_ str: String) {
  print("The string \(str) has \(str.count) letters.\n")
}
countLettersInString("Goodbye")

// Ex: 6 - using external parameter names like 'in', 'for', and 'with'
func countLetters(in string: String) {
  print("The string \(string) has \(string.count) letters.\n")
}
countLetters(in: "Hello")

// Ex: 7 - return values
func albumIsTaylor(name: String) -> Bool {
  if name == "Taylor Swift" { return true }
  if name == "Fearless" { return true }
  if name == "Speak Now" { return true }
  if name == "Red" { return true }
  if name == "1989" { return true }
  
  return false
}

if albumIsTaylor(name: "Red") {
  print("That's one of hers!")
} else {
  print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
  print("That's one of hers!")
} else {
  print("Who made that?!")
}

// (2) Optionals
// Ex: 1 - this function either returns an OPTIONAL string or may return nil
func getHaterStatus(weather: String) -> String? {
  if weather == "sunny" {
    return nil
  } else {
    return "Hate"
  }
}

var status: String?   // need to add question mark to let Swift know this is an optional
status = getHaterStatus(weather: "rainy")

// Ex: 2 - calling a function with an optional, use 'if let'
func getHaterStatus2(weather: String) -> String? {
  if weather == "sunny" {
    return nil
  } else {
    return "Hate"
  }
}

func takeHaterAction(status: String) {
  if status == "Hate" {
    print("Hating")
  }
}

if let haterStatus = getHaterStatus2(weather: "rainy") {
  takeHaterAction(status: haterStatus)
}

// (3) Optional Chaining
func albumReleased(year: Int) -> String? {
  switch year {
  case 2006: return "Taylor Swift"
  case 2008: return "Fearless"
  case 2010: return "Speak Now"
  case 2012: return "Red"
  case 2014: return "1989"
  default: return nil
  }
}

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)\n")

// Ex2: Nil Coalescing - if A has a value, use it, otherwise use B
let album2 = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album2)")

// (4) Enumerations
enum WeatherType {
  case sun
  case cloud
  case rain
  case wind
  case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
  if weather == .sun {
    return nil
  } else {
    return "Hate"
  }
}

getHaterStatus(weather: .cloud)

// (5) Structs
// Ex 1
struct Person {
  var clothes: String
  var shoes: String
}
let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
print(taylor.clothes)
print(other.shoes)

// changing one copy does not change the original
var taylorCopy = taylor
taylorCopy.shoes = "flip flops"
print(taylor)
print(taylorCopy)

// Ex 2: Struct with a method
struct Person2 {
  var clothes: String
  var shoes: String
  
  func describe() {
    print("I like wearing \(clothes) with \(shoes)")
  }
}

// (6) Classes
class Person3 {
  var clothes: String
  var shoes: String
  
  init(clothes: String, shoes: String) {
    self.clothes = clothes
    self.shoes = shoes
  }
}

// Ex: Inheritance
class Singer {
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  
  func sing() {
    print("La la la la")
  }
}

var taylor2 = Singer(name: "Taylor", age: 25)
taylor2.name
taylor2.age
taylor2.sing()

class CountrySinger: Singer {
  override func sing() {
    print("Trucks, guitars, and liquor")
  }
}

var taylor3 = CountrySinger(name: "Taylor", age: 25)
taylor3.sing()

// Ex: another child class with new property (noiseLevel)
class HeavyMetalSinger: Singer {
  var noiseLevel: Int
  
  init(name: String, age: Int, noiseLevel: Int) {
    self.noiseLevel = noiseLevel
    super.init(name: name, age: age)
  }
  
  override func sing() {
    print("Grrrrr rargh rargh rarrrrgh!")
  }
}

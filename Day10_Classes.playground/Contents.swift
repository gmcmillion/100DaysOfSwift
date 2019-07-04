import UIKit

// NOTE: Classes have 5 main differences from a Struct
// 1. classes never come with a memberwise initializer
// 2. you can create a class based on an existing class (inherits all properties and methods)
// 3. the way they are copied (see (5) down below for more info)
// 4. classes can have deinitializers – code that gets run when an instance of a class is destroyed
// 5. classes and structs handle constants differently (more details in (7))

// (1) Creating your own classes
class Dog {
  var name: String
  var breed: String
  
  init(name: String, breed: String) {
    self.name = name
    self.breed = breed
  }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// (2) Class inheritance - inherits from parent class
class Poodle: Dog {
  init(name: String) {
    super.init(name: name, breed: "Poodle")   // always call super.init from child classes
  }
}

let yoshi = Poodle(name: "Yoshi")

// (3) Overriding methods
class Dog2 {
  func makeNoise() {
    print("Woof!")
  }
}
class Poodle2: Dog2 {
  override func makeNoise() {   // overrides parent func
    print("Yip!\n")
  }
}

let molly = Poodle2()
molly.makeNoise()

// (4) Final classes - no other class can inherit from it, or override methods
final class Dog3 {
  var name: String
  var breed: String
  
  init(name: String, breed: String) {
    self.name = name
    self.breed = breed
  }
}

// (5) Copying objects
// When you copy a struct, both the original and the copy are different things – changing
// won’t change the other. When you copy a class, both the original and the copy point to the same
// thing, so changing one does change the other
class Singer {
  var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)      // original is no longer taylor swift
print(singerCopy.name+"\n")  // copy is also no longer taylor swift

// (6) Deinitializers - to destroy instance of a class
class Person {
  var name = "John Doe"
  
  init() {
    print("\(name) is alive!")
  }
  
  func printGreeting() {
    print("Hello, I'm \(name)")
  }
  
  deinit {
    print("\(name) is no more!\n")
  }
}

for _ in 1...3 {
  let person = Person()
  person.printGreeting()
}

// (7) Mutability
// If you have a constant struct with a variable property, that property can’t be
// changed because the struct itself is constant.
// if you have a constant class with a variable property, that property can be changed.

class Singer2 {
  var name = "Taylor Swift"
  
  // to prevent this behavior, use 'let' like example below
  // let name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)

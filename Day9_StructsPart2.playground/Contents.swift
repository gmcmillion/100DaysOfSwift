import UIKit

// (1) Initializer - provides different ways to create your struct
struct User {
  var username: String
  
  // all properties must be assigned a value before init ends
  init() {
    username = "Anonymous"
    print("Creating a new user!\n")
  }
}

var user = User()
user.username = "twostraws"

// (2) Referring to current instance
struct Person {
  var name: String
  
  init(name: String) {
    print("\(name) was born!\n")
    self.name = name    // use self to distinguish between property and parameter
  }
}

var person = Person(name: "Gregg")

// (3) Lazy properties - Swift lets you create some properties only when they are needed
struct FamilyTree {
  init() {
    print("Creating family tree!")
  }
}

struct Person2 {
  var name: String
  // lazy - Swift will only create FamilyTree when its first accessed
  lazy var familyTree = FamilyTree()
  
  init(name: String) {
    self.name = name
  }
}

var ed = Person2(name: "Ed")
ed.familyTree   //creates family tree

// (4) Static properties and methods
// Shares specific properties & methods across all instances of the struct by declaring them as static
struct Student {
  static var classSize = 0  // shared property
  var name: String
  
  init(name: String) {
    self.name = name
    Student.classSize += 1
  }
}

// Read classSize from struct, not instance
print(Student.classSize)
var s1 = Student(name: "Gregg")
var s2 = Student(name: "Marlyn")
print(Student.classSize)

// (5) Access control - private and public
struct Person3 {
  private var id: String  // private restricts access to code outside the struct
  
  init(id: String) {
    self.id = id
  }
  
  func identify() -> String {
    return "My social security number is \(id)"
  }
}

let gregg = Person3(id: "12345")
gregg.identify()

import UIKit

// (1) Properties
// Ex1
struct Person {
  // properties
  var clothes: String
  var shoes: String
  
  func describe() {
    print("I like wearing \(clothes) with \(shoes)\n")
  }
}
let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()

// Ex2 - willSet and didSet
struct Person2 {
  var clothes: String {
    // willSet - called before property is changed
    willSet {
      updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
    }
    
    // didSet - called after property is changed
    didSet {
      updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
    }
  }
}

func updateUI(msg: String) {
  print(msg)
}
var taylor2 = Person2(clothes: "T-shirts")
taylor2.clothes = "short skirts"

// Ex3 - computed properties
struct Person3 {
  var age: Int
  
  var ageInDogYears: Int {
    get {
      return age * 7
    }
  }
}
var fan = Person3(age: 25)
print(fan.ageInDogYears)

// (2) Static Properties and Methods
struct TaylorFan {
  static var favoriteSong = "Look What You Made Me Do"
  
  var name: String
  var age: Int
}

let fan2 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)   // rather than fan2.favoriteSong

// (3) Access Control
class TaylorFan2 {
  private var name: String?
}

// (4) Polymorphism and Typecasting
// Ex1 - polymorphism
class Album {
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func getPerformance() -> String {
    return "The album \(name) sold lots"
  }
}

class StudioAlbum: Album {
  var studio: String
  
  init(name: String, studio: String) {
    self.studio = studio
    super.init(name: name)
  }
  
  override func getPerformance() -> String {
    return "The studio album \(name) sold lots"
  }
}

class LiveAlbum: Album {
  var location: String
  
  init(name: String, location: String) {
    self.location = location
    super.init(name: name)
  }
  
  override func getPerformance() -> String {
    return "The live album \(name) sold lots"
  }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")
// you can assign these 3 to an album array cause theyre all of type Album
var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
  print(album.getPerformance())
}

// Ex2 - typecasting
for album in allAlbums {
  print(album.getPerformance())
  
  if let studioAlbum = album as? StudioAlbum {
    print(studioAlbum.studio)
  } else if let liveAlbum = album as? LiveAlbum {
    print(liveAlbum.location)
  }
}

// Ex3
let number = 5
let text = String(number)
print(text)

// (5) Closures
let vw = UIView()
UIView.animate(withDuration: 0.5, animations: {
  vw.alpha = 0
})

let vw2 = UIView()
UIView.animate(withDuration: 0.5) {
  vw2.alpha = 0
}

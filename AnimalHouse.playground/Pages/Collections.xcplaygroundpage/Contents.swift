
protocol Quackable {
    func quack()
}

protocol Spawnable {
    func spawn()
}

class Animal {
    var name:String
    var color:String
    
    init(name:String, color:String) {
        self.name = name
        self.color = color
    }
    
    deinit {
        print("Oh no!")
    }
    
    func report() {
        print("I'm a \(color) \(name) Aminal")
    }
}

class Duck : Animal, Quackable {
    
    init(color:String) {
        super.init(name: "Duck", color:color)
    }
    
    func quack() {
        print("Quack")
    }
}

class Fish : Animal, Spawnable {
    
    init(color:String) {
        super.init(name: "Fish", color:color)
    }
    
    func spawn() {
        print("long trip ahead...")
    }
}


var zoo:[Animal] = [
    Duck(color: "brown"),
    Duck(color: "yellow"),
    Fish(color: "rainbow"),
    Fish(color: "brown"),
    Duck(color: "brown")
]

var duckCount = 0
var fishCount = 0

for animal in zoo {
    animal.report()

    if animal is Duck {
        duckCount++
    } else if animal is Fish {
        fishCount++
    }
    
    if let duck = animal as? Duck {
        duck.quack()
    } else if let fish = animal as? Fish {
        fish.spawn()
    }
    
}

print("We have \(duckCount) ducks and \(fishCount) fish")

zoo = [Animal]()

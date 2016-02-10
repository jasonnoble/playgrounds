
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


let duck = Duck(color:"yellow")
duck.report()

let fish = Fish(color: "rainbow")
fish.report()



protocol Quackable {
    func quack()
}

class Animal {
    
}

class Duck : Animal, Quackable {
    
    func quack() {
        print("Quack")
    }
}

class Fish : Animal {
    
}

let duck = Duck()

//duck is Duck
//duck is Fish
//duck is Quackable

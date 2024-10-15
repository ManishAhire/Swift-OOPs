import UIKit

protocol Vehicle {
    var speed: Double { get }
    func start()
    func stop()
}

extension Vehicle {
    
    func start() {
        print("Starting the vehicle at speed \(speed) km/h")
    }
    
    
    func stop() {
        print("Stopping the vehicle")
    }
}


class Car: Vehicle {
    var speed: Double
    
    
    init(speed: Double) {
        self.speed = speed
    }
    
    func start() {
        print("Car is starting at speed \(speed) km/h")
    }
}

class Bicycle: Vehicle {
    
    var speed: Double = 20.0
}


let car = Car(speed: 100)
car.start()
car.stop()

let bike = Bicycle()
bike.start() // Abstraction - Hiding details - We just need know to method - We don't need to know method implementation
bike.stop() // Abstraction - Hiding details - We just need to know method - We don't need to know method implementation

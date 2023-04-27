import UIKit

    // MARK: Documentation
        // Para documentar en Swift se presiona sobre la función:
            // command + option + \
        // Esto crea una plantilla para documentar la funcion


/// This prints Hello in the debug area
/// - Parameter name: Username
func sayHello(name: String) {
    print("Hello, \(name)")
}
sayHello(name: "Miguel")


/// This calculates Body Mass Index (BMI).
///
/// This function does not need internet connection.
/// - Parameters:
///   - weight: Weight of a person in kilograms
///   - height: Height in meters
/// - Returns: The calculated bmi
/// - Warning: This function only allows positive values.
/// - Authors: Miguel Ulloa
func calculateBMI(_ weight: Float, _ height: Float) -> Float {
    return weight / (height * height)
}
calculateBMI(67.4, 1.70)



/// Class to create objects type Person
class Person {
    
    private let name: String
    private let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

var greeting = "Hello, playground"

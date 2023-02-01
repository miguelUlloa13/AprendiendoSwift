import UIKit

// Manejo de errores

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    
    if firstNumber == nil{
        throw SumError.firstNumberNil
    }else if secondNumber == nil{
        throw SumError.secondNumberNil
    }else if firstNumber! < 0 || secondNumber! < 0{     // Se desempacan ! los valores porque ya se comprobo que los numeros no son nulos
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    // Se realiza la suma
    return firstNumber! + secondNumber!
    // En este punto las variables no son nulos, es por ello que se desempacan !
}

// Definicion de Tipo de errores
                // Se llama al protocol de Error
enum SumError: Error {
    // Todos los case que se definan a la ENUM van a pertencer a Error
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

// Propagacion de errores
        // Para controlar los errores, es decir controlar que la funcion puede dar
        // algun tipo de error
do {
    // Dentro del do estara la funcion que provocara errores
    print(try sum(firstNumber: 100, secondNumber: 50))
} catch SumError.firstNumberNil {
    print("Primer numero es nulo")
} catch SumError.secondNumberNil {
    print("Segundo numero es nulo")
} catch SumError.numberNegative(let firstNumber, let secondtNumber) {
    print("Hay algun numero negativo. firstNumber: \(firstNumber), secondNumber \(secondtNumber)")
}

//*************************************************************************

// Type casting || validacion de tipos de datos
        //

let myString = "Miguel"
let myInt = 23

class Myclass {
    var name: String!
    var age: Int!
}

let myClass = Myclass()
myClass.name = "Miguel Ulloa"
myClass.age = 32

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray {
    if item is String {
        // Downcasting: transformar un tipo de elemento/dato a otro
        let myItemString = item as! String
            // Se pone el desempaquetado en as porque ya se esta seguro que es String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if item is Int {
        // Downcastig
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if item is Myclass {
        let myItemMyClass = item as! Myclass
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}

        // Forma mas sencilla de hacer Downcasting

for item in myArray {
    if let myItemString = item as? String {
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = item as? Int {
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if let myItemMyClass = item as? Myclass {
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}




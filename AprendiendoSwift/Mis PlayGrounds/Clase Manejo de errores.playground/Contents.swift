import UIKit

// Manejo de errores

    // Para que una funcion pueda lanzar errores se escribe la palabra reservada "throws"

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
                // Se llama al protocolo de Error
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



    // Pasos para declarar una funcion que sea capaz de lanzar errores

        // 1. Seguido de los parametros de entrada, escribir la palabra reservada "throws"
func doSomething(everythingIsFine: Bool = false) throws -> String {

  if everythingIsFine == true {
            // Bloque con condion True
        // 2. Declarar las condiciones o controles
      print("Everything is ok")
      return "Everything is ok"
  } else {
            // Bloque con condion False
        // 5. Dentrp de este bloque de codigo se lanzara el error mediante la palabra reservada "throw" seguida del tipo de error, por ejemplo:
                // throw nombreEnum.tipoErro(parametros)
      throw ThrowableError.badError(howBad: 4)
  }
}

    // 3. Definir tipos de errores
        // Mediante un enum que utiliza el protocolo Error
        // Todos los cases van a pertenecer a un error
enum ThrowableError: Error {

    // 4. Definir los errores
    
    case badError(howBad: Int)
        // Un error puede recibir parametros para especificar con mayor detalle el error
}

    // 6. Propagacion de errores
        // Debido que la funcion doSomething() puede lanzar errores se escribe antes la palabra reservada "try", es decir, intentar ejecutar la funcion

    // 7. Para controlar las funciones se utiliza la clausula do...catch
do {
    let result = try doSomething()
}
catch ThrowableError.badError(let howBad) {
    
    // 8. despues de cada catch se escribe el tipo de error y asi sucesivamente. Ademas se piede agregar el codigo que se debe realizar al producirse este error
    print("Bad Error (How Bad Level: \(howBad))")

   
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



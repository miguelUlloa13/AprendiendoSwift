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
    // Todos los case que se definan en el ENUM van a pertencer a Error
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

// Propagacion de errores
        // Para controlar los errores, es decir controlar que la funcion puede dar
        // algun tipo de error
do {
    // Dentro del do estara la funcion que provocara errores
    print(try sum(firstNumber: -100, secondNumber: 50))
} catch SumError.firstNumberNil {
    print("Primer numero es nulo")
} catch SumError.secondNumberNil {
    print("Segundo numero es nulo")
} catch SumError.numberNegative(let firstNumber, let secondtNumber) {
    print("Hay algun numero negativo. firstNumber: \(firstNumber), secondNumber \(secondtNumber)")
}



    // Pasos para declarar una funcion capaz de lanzar errores

        // 1. Seguido de los parametros de entrada, escribir la palabra reservada "throws"
func doSomething(_ everythingIsFine: Bool) throws -> String {

  if everythingIsFine == true {
            // Bloque con condion True
        // 2. Declarar las condiciones o controles
      print("Everything is ok \(everythingIsFine)")
      return "Everything is ok"
  } else {
            // Bloque con condion False
        // 5. Dentro de este bloque de codigo se lanzara el error mediante la palabra reservada "throw" seguida del tipo de error, por ejemplo:
                // throw nombreEnum.tipoError(parametros)
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
    let result = try doSomething(true)
    // Cuando usamos try, nuestra función throw tiene que estar envuelta en una instrucción do-catch. Esto nos permite personalizar nuestro manejo de errores y realizar acciones específicas basadas en el error.
    
}
catch ThrowableError.badError(let howBad) {
    
    // 8. despues de cada catch se escribe el tipo de error y asi sucesivamente. Ademas se puede agregar el codigo que se debe realizar al producirse este error
    print("Bad Error (How Bad Level: \(howBad))")

   
}


// TODO: - Buscar la diferencia entre try, try?, try!

/*
 try: se usa con una declaración do-catch y permite un enfoque más detallado para el manejo de errores.
 try?: ignora nuestros errores y los establecerá en nulo si ocurren.
 try!: fuerza unwraps el código y garantiza que nuestra función nunca encontrará un error. En el caso de que nuestra función arroje un error, nuestra aplicación simplemente fallará.
 */





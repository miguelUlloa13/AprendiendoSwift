import UIKit

// MARK: - El atributo @escaping -

// MARK: - El ciclo de vida de un closure @escaping es el siguiente:

// 1. Pasamos el closure como parámetro de una función.
// 2. La función ejecuta el closure de manera asincrona o lo almacena fuera del ambito de la función.
// 3. La función finaliza su ejecución.
// 4. En caso de haber almacenado el closure, pudieramos ejecutarlo en este punto, ya finalizada su ejecución.

// MARK: - Sintaxis:

/*
 
 func someFunction(closure: @escaping (Int) -> Void) {
 
 // Código
 
 }
 
 */

// Un código síncrono es aquel código donde cada instrucción espera a la anterior para ejecutarse mientras que un código asíncrono no espera a las instrucciones diferidas y continúa con su ejecución. Por lo general la asincronía permite tener una mejor respuesta en las aplicaciones y reduce el tiempo de espera del cliente.

// MARK: Ejemplo 1 Closure de manera síncrona

var closureStorage: ((Int) -> Void)?    // Se define el closure "closureStorage"

// Se define la funcion "someFunction1" con parametro de entrada un closure "localClosure"
func someFunction1(localClosure: @escaping (Int) -> Void) {
    
    // Al "closureStorage" se le asigna "localClosure"
    closureStorage = localClosure
    
} // close someFunction1

// Se asocia el closure a la funcion "someFunction1"
someFunction1 { (number) in
    
    print("El valor de la variable number es \(number)")
    
} // closure

// Se ejecuta el closure "closureStorage"
closureStorage?(50)

print("¡Punto de referencia!")

// En este ejemplo hemos pasado un closure como parámetro de la función someFunction, dentro de esta almacenamos el closure en la variable closureStorage.

// Luego de finalizada la ejecución de la función y pasado el closure imprimimos un mensaje de referencia, acto seguido ejecutamos el closure que tenemos almacenado en closureStorage.


// MARK: Ejemplo 2 Closure de manera asíncrona

func someFunction2(closure: @escaping (Int) -> Void) {
    
    var number = 20
    
    // Ejecutamos el closure luego de 2 segundos apartir
    // de la ejecución de la función
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        
        closure(number)
        
    }
    
} // someFunction

someFunction2 { (number2) in
    
    print("El valor de la variable 2 number es \(number2)")
    
} // closure

print("¡Punto de referencia 2!")

// Se imprime el mensaje de referencia y la última línea se muestra 2 segundos en el futuro.

// Cada vez que necesitemos que un closure pasado como parámetro sea almacenado fuera del ambito de la función (o método) lo establecemos como @escaping, o algo mucho más común:




// El resultado que aparece por pantalla es "Todo OK"

// TODO: - Ejemplo de scaping closure
// url : https://www.youtube.com/watch?v=QXYO7xf9xD4

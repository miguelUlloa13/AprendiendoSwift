import UIKit

    // MARK: - Closures -

    // Los closures son Bloque autocontenido de codigo que se puede pasar/usar alrededor de la aplicacion.

    // Cuando se pasa un closure a una función este se ejecuta dentro del ambito de la misma, cumple su objetivo y poco más.


    // MARK: - El ciclo de vida por defecto es el siguiente:
 
    // 1. Pasamos el closure como parámetro de una función.
    // 2. La función ejecuta el closure.
    // 3. La función finaliza su ejecución.


    // MARK: - Sintaxis:

/*
{ (parámetros-de-entrada) -> tipo_de_retorno in

    declaraciones...

}
 
    La palabra clave "in" después del tipo de retorno funge como separador entre el tipo de retorno y las declaraciones dentro del closure.
 */

    // MARK: Ejemplo:

let miPrimeroClosure = {(materiaUno:Double, materiaDos:Double, materiaTres:Double) -> Double in
    
    return (materiaUno + materiaDos + materiaTres)/3
    
}

print("Mi calificacion promedio fue de: \(miPrimeroClosure(100,22,88))")

    // Los closures son como las funciones

    // MARK: - Closure que recibe y retorna un tipo de datos

let myClosure = { (value: Int) -> Int in
    
    return value
    
}

    // MARK: - Closure que recibe y no retorna nada (Void)

let myClosure2 = { (value: Int) -> Void in
    
    print(value)
    
}

    // MARK: - Closure que no recibe y no retorna nada

let hello = { () -> Void in
    
    print("Hello!")
    
}


print(myClosure(20))
print(type(of: myClosure))

print(myClosure2(10))
print(type(of: myClosure2))

print(hello)
print(type(of: hello))

    // MARK: - Primero instanciar el closure y despues asociarlo

    // MARK: Ejemplo 1

    // Primero se define el closure
var arithmeticOperation: (Double, Double) -> Double

    // A la misma instancia "arithmeticOperation" se le asocio dos closure: uno que suma y otro que multiplica.

    // Se asocia el closure que suma
arithmeticOperation = {
    
    (lNumber: Double, rNumber: Double) -> Double in
    
    return lNumber + rNumber
    
}

print("5 + 5.2 = \(arithmeticOperation(5, 5.2))")


    // definimos el closure, y luego en otra área del programa podemos asociar un closure, que puede ser cualquiera, siempre y cuando cumpla con la firma (datos que recibe y retorna) que hemos definido.

    // Se asocia el closure que suma multiplica
arithmeticOperation = {
    
    (lNumber: Double, rNumber: Double) -> Double in
    
    return lNumber * rNumber
    
}

print("8 * 16 = \(arithmeticOperation(8, 16))")

    
    // MARK: Ejemplo 2

var sumaDosNumerosClosure: ((Int, Int) -> Void)?    // Se instancia el closure

    // La funcion recibe como parametro un closure
func imprimirResutado(myClosure: @escaping (Int, Int) -> Void) {
    
    sumaDosNumerosClosure = myClosure   // Se le asigna al closure sumaDosNumerosClosure el closure de parametro de entrada
    
}

    // Se le asocia a la funcion imprimirResutado el closure
imprimirResutado{ (numeroUno, numeroDos) in
    
    var resultado = numeroUno + numeroDos
    
    print("La suma de los numeros es: \(resultado)")
    
}

    // Se manda a llamar la funcion
sumaDosNumerosClosure!(2,2)


    // MARK: - Closure como parámetros y valores de Retorno

    // MARK: Ejemplo 1 Closure como parametro

    // Se define la funcion RunClosure con un parametro de entrada (closure) que no recibe y no retorna nada
func runClosure(_ closure: () -> Void) {
    
    closure()
    
}

let greetingMessage = {
    
    () -> Void in
    
    print("Hola!")
    
}

    // Se pasa a la funcion "runClosure" como parametro el closure "greetingMessage"
runClosure(greetingMessage)


    // MARK: Ejemplo 2

func runClosure2(myClosure: () -> Void) {
    
    myClosure()
    
}

runClosure2(myClosure: greetingMessage)



    // MARK: - Función que retorna un closure


func returnClosure() -> () -> Void {
    
    return {
        
        () -> Void in
        
        print("Hola, Miguel!")
        
    } // return
    
} // returnClosure

let Returnclosure = returnClosure()

//print(returnClosure)
//print(returnClosure())
print(Returnclosure())
//print(Returnclosure)


    // MARK: - Closure capturando valores del entorno
    
func travel() -> (String) -> Void {
    
    var counter = 0
    
    return {
        
        (destination: String) -> Void in
        
        counter += 1
        
        print("Has viajado \(counter) \(counter > 1 ? "veces" : "vez") a \(destination)")
        
    } // return
    
} // returnClosure

let spainTravel = travel()

spainTravel("España")
spainTravel("España")
spainTravel("España")

    // Esto es posible debido a que los closures, así como las funciones anidadas, toman las variables o constantes de su entorno como referencias

    // Esto sería lo que en C++ se conoce como un puntero a función, un puntero al área de memoria donde se encuentra la función o closure en el caso de Swift.



    // MARK: - El atributo @escaping

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

var closureStorage: ((Int) -> Void)?    // Instancia de closure

func someFunction1(closure: @escaping (Int) -> Void) {

    closureStorage = closure
        
} // someFunction

someFunction1 { (number) in
        
    print("El valor de la variable number es \(number)")
        
} // closure

closureStorage?(50)

print("¡Punto de referencia!")


    // MARK: Ejemplo 2 Closure de manera asíncrona

func someFunction(closure: @escaping (Int) -> Void) {
    
    var number = 20
    
    // Ejecutamos el closure luego de 2 segundos apartir
    // de la ejecución de la función
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        
        closure(number)
        
    }
    
} // someFunction

someFunction { (number) in

    print("El valor de la variable number es \(number)")

} // closure

print("¡Punto de referencia!")

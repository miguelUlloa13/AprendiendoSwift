import UIKit

// MARK: - Closures Non Escaping -

// Los closures son Bloque autocontenido de codigo que se puede pasar/usar alrededor de la aplicacion.

// Cuando se pasa un closure a una función este se ejecuta dentro del ambito de la misma, cumple su objetivo y poco más.

// Los closures pueden capturar y almacenar referencias de cualquier constante o variable del contexto en el cual fueron definidas.


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


let myClosure2 = { (value: Int) -> Int in
    
    value   // cuando tenemos una única línea de nuestro closure y queremos devolver un valor, no hace falta poner el return.
    
}

// MARK: - Closure que recibe un parametro y no retorna nada (Void)

let myClosure3 = { (value: Int) -> Void in
    
    print(value)
    
}

// MARK: - Closure que no recibe y no retorna nada de manera implicita

let hello = { () -> Void in
    
    print("Hello!")
    
}

let bye = { () -> () in
    
    print("Bye!")
    
}


print(myClosure(20))
print(type(of: myClosure))

print(myClosure2(10))
print(type(of: myClosure2))

print(hello)
print(type(of: hello))

// MARK: - Primero definir el closure y despues asociarlo

// MARK: Ejemplo 1 Closure declaración de manera explicita

// Primero se define el closure
var arithmeticOperation: (Double, Double) -> Double

// A la misma definicion "arithmeticOperation" se le asocio dos closure: uno que suma y otro que multiplica.

// Se asocia el closure que suma
arithmeticOperation = { // Inicializacion del closure
    
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

// MARK: Ejemplo 2 Closure declaración de manera implicita

let giveAnInt = {
    return 18
}

print(2 + giveAnInt())


// MARK: Ejemplo 3 Closure mas simplicado


let giveAnInt2 = {
    20
}

print(2 + giveAnInt2())


var sayHello: String {
    return "Hello, everyone!"
}



// MARK: - Trailing Closures (Closure como parámetros y valores de Retorno)

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



// MARK: Ejemplo 3 Usando scaping closure

var sumarDosNumerosClosure: ((Int, Int) -> Void)?    // Se define el closure

// La funcion recibe como parametro un closure
func imprimirResutado(myClosure: @escaping (Int, Int) -> Void) {
    
    sumarDosNumerosClosure = myClosure   // Se le asigna al closure "sumaDosNumerosClosure" el closure de parametro de entrada "myClosure"
    
}

// Se le asocia a la funcion imprimirResutado el closure
imprimirResutado{ (numeroUno, numeroDos) in
    
    var resultado = numeroUno + numeroDos
    
    print("La suma de los numeros es: \(resultado)")
    
}

// Se inicializa el closure
sumarDosNumerosClosure!(2,2)




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



// MARK: - Formas de un Closure

// Primera forma de un closure

func calculateOne(expression: () -> Int) -> Int {
    
    return expression()
    
} // calculate

let resultOne = calculateOne(expression: {
    
    () -> Int in
    
    5 + 5
    
}) // closure

print("La suma de 5 + 5 es igual a \(resultOne)")


// Segunda forma de un closure

func calculate(expression: () -> Int) -> Int {
    
    return expression()
    
} // calculate

let result = calculate { () -> Int in
    
    5 + 5
    
} // closure

print("La suma de 5 + 5 es igual a \(result)")

//En la llamada a la función calculate hemos eliminado los paréntesis y el nombre del parámetro expression. Todo esto es deducido por el compilador.



// MARK: - Ejercicios -

// MARK: - Sort

// La libreria standard de Swift proporciona un método llamado sorted(by:), el cual ordena una array.
// El método sorted(by:) acepta un closure que espera dos argumentos del mismo tipo y retorna un booleano. El booleano será true si el primer valor debe aparecer antes que el segundo valor, y será false en caso contrario.

var names = ["Chris", "Alex", "SwiftBeta", "iOS", "Apple"]

// Primera manera. Definiendo una condicion custom
names.sorted { (firstValue: String, secondValue: String) -> Bool in
    return firstValue < secondValue
}

// Segunda manera. Forma mas simplificada
names.sorted { firstValue, secondValue in
    firstValue < secondValue
}

// Tercera manera. Usando los atajos $0 y $1
print(names.sorted { $0 < $1 })
// $0 es un atajo que significa "primer argumento" en un closure. El número 0 indica si es el primer parámetro, el 1 si es el segundo, etc.
// $0 es el firstValue y el $1 el secondValue

// Cuarta manera
names.sorted(by: <)

// Sexta manera
names.sorted()  // El array se acomoda del menor a mayor sin necesidad de poner una condicion custom

// Septima manera. Usando una funcion como parametro
func backward(_ stringOne: String, _ stringTwo: String) -> Bool {
    return stringOne < stringTwo
}

var reversedNames = names.sorted(by: backward)

// Octava manera. Usando un closure como parametro
let closureSorted = { (firstValue: String, secondValue: String) -> Bool in
    
    firstValue < secondValue
    
}

var reversedNames2 = names.sorted(by: closureSorted)



// Novena manera. Definiedo el closure despues
var reversedNames3 = names.sorted { firstValue, secondValue in
    firstValue < secondValue
}


// Todos los ejemplos anteriores son distintas maneras de acomodar un arreglo de menor a mayor


// Probando Sort
names.sorted { firstValue, secondValue in
    true    // cuando es "true" sin poner una condicion, el arreglo empieza del ultimo calor y termina en el primero
}

names.sorted { firstValue, secondValue in
    false    // cuando es "true"
}



// MARK: - Múltiples Closures en una función

enum BackendError {
    case customError
}

func getDataFromBackend(status: String,
                        onSuccess: () -> Void,
                        onFailure:(BackendError) -> Void) {
    if status == "OK" {
        onSuccess()
    } else {
        onFailure(.customError)
    }
}

getDataFromBackend(status: "qq", onSuccess: {
    print("Todo OK")
}) { (error) in
    print("Error \(error)")
}





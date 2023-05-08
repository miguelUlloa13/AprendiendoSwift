import UIKit

//*************************************************************************


// MARK: - Estructuras condicionales -

    // MARK: - If else -


var edad = 18
var dinero = 1000
var sexoFemenino = true

if !((edad >= 18 || dinero > 250) && (sexoFemenino)) {
    print("Si puedes entrar al bar")
} else {
    print("No puedes entrar al bar")
}

        // If anidado

if edad >= 18 {
    
    print("Si puedes entrar al bar")
    
    if dinero > 250 {
        print(", aqui esta su mesa VIP")
        
        if sexoFemenino {
            print(", tome asiento chica")
        }
        
    }
} else {
    print("No puedes entrar al bar")
}


let isTrue: Bool = false

if isTrue {
    // No es necesario poner la codicion para ejecutar esta seccion
    print("Es verdadero")
} else {
    print("Es falso")
}




    // MARK: - Switch -

let country = "MX"

switch country {
    
case "ES":
    print("El idioma es espaniol")
    
case "MX":
    print("El idioma es espaniol")
    
case "PE":
    print("El idioma es espaniol")
    
case "CO":
    print("El idioma es espaniol")
    
case "ARG":
    print("El idioma es espaniol")
    
case "EEUU":
    print("El idioma es ingles")
    
default:
    print("No conocemos el idioma")
}

let age = 102

switch age {
    
case 0...2:
    print("Eres un bebe")
    
case 3...10:
    print("Eres un ninio")
    
case 11..<18:
    print("Eres un adolescente")
    
case 18..<70:
    print("Eres adulto")
    
case 70..<100:
    print("Hola abuelo")
    
default:
    print("😱")
    
}

        // Switch con enum

enum infoPersonal{
    
    case nombre
    case apellido
    case direccion
    case numTel
    
}

let datoUsuario: infoPersonal = .nombre

switch datoUsuario {
    
case .nombre:
    print("Estamos editando el nombre")
case .apellido:
    print("Estamos editando el apellido")
case .direccion:
    print("Estamos editando la direccion")
case .numTel:
    print("Estamos editando el numero telefonico")
    
}

//*************************************************************************

        // Ejemplo de enum y switch


let country2 = "MX"

enum paisesHablahispana {
    
    case MX, ESP, ARG, PER, PR, BV

}

switch country {
    
case "ES":
    print("El idioma es espaniol")
    
case "MX":
    print("El idioma es espaniol")
    
case "PE":
    print("El idioma es espaniol")
    
case "CO":
    print("El idioma es espaniol")
    
case "ARG":
    print("El idioma es espaniol")
    
case "EEUU":
    print("El idioma es ingles")
    
default:
    print("No conocemos el idioma")
}


// MARK: - Switch Statement with fallthrough -

//Si usamos la palabra clave fallthrough dentro de la declaración del case, el control continúa con el siguiente case, incluso si el valor del caso no coincide con la expresión de cambio.

// Programa para buscar un dia en la semana
let dayOfWeek = 4

switch dayOfWeek {
  case 1:
    print("Sunday")
        
  case 2:
    print("Monday")
        
  case 3:
    print("Tuesday")
        
  case 4:
    print("Wednesday")
    fallthrough
        
  case 5:
    print("Thursday")
        
  case 6:
    print("Friday")
        
  case 7:
    print("Saturday")
        
  default:
    print("Invalid day")
}
// Se imprimira Wednesday y Thursday porque fallthrough continua con el siguiente caso


    // MARK: - Loops

//*************************************************************************

// Ciclo For

        /* Los ciclos for sirven para itinerar sobre una coleccion de datos/items y ejecutar
           un bloque de codigo por cada uno de los items de la coleccion o rango
         
        */

var contador = 0

        // Mediante la variable numero se va acceder a los elemetos del arreglo/cantidad de items
              // rango
for numero in 1...4 {
    
    contador += 1
    print(numero)
    
}

// Se va a repetir 4 veces, y en cada itineracion sele asignara un valor a numero

    // Ejemplo con un arreglo

var paises = ["MX", "EUA", "JP"]

for pais in paises {
    
    print(pais)
    
}

    // Ejemplo con un diccionario

var paisesDiccionario = ["MX":"Mexico", "EUA":"Estados Unidos", "JP":"Japon"]

for pais in paisesDiccionario {
    
    print(pais)
    
}

for (pais, significado) in paisesDiccionario {
    
    print("\(pais) --- \(significado)")
    
}

var numeros = [1,2,3,4,5,6,7,8,9]
var suma = 0

for numero in numeros {
    
    suma = numero + suma
    
}

print("La suma de los numeros es: \(suma)")

//*************************************************************************

    // Ciclo While

var ageOne = 10

while ageOne < 18 {
    
    print("Eres menor de edad. Te faltan \(18 - age) anios")
    ageOne += 1
    
}

print("Ya eres mayor de edad")

//*************************************************************************

// Ciclo Repeat While || Do While

        // Ejemplo con Repeat While: Eliminar todos los valores del arreglo

var nuneros = [0,1,2,3,4,5,6,7,8,9]
var i = numeros.count - 1  //indice: el indice llega hasta el 9 porque son 10 elementos
// .count cuenta el numero de elementos del arreglo

// numeros.remove(at: 9)  //para eliminar un solo elemento del arreglo en la posicion 9

repeat{
    
    numeros.remove(at: i)
    
    i -= 1
    print("Cantidad de elementos: \(numeros.count)")
    print("i = \(i)")
}while(numeros.count > 0)

print("El arreglo esta vacio, su cantidad de elementos es: \(numeros.count)")

// Ejemplo con Repeat While: Programa de tombola

var numeroAleatorio:Int
var n = 0

repeat{
    n += 1
    numeroAleatorio = Int(arc4random_uniform(10))
    print("El ciclo lleva \(n) cantidad de iteraciones")
    print("Num. aleatorio: \(numeroAleatorio)")
}while(numeroAleatorio != 8)






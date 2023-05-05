import UIKit

//*************************************************************************

// MARK: - Generics -
    // Codigo generigo permite escribir funciones y tipos flexibles que son reutilizables y serviran para tipos que se adapten a ciertos requisitos.
    // Swift Generics nos permite crear una sola función y clase (o cualquier otro tipo) que se puede usar con diferentes tipos de datos. Esto nos ayuda a reutilizar nuestro código.

// MARK: - Sintaxis:
    // MARK: Generic function
/*
 
 func someFunction<T>(data: T){
    declaraciones...
 }
 
 La <T> se denomina "type parameter". Se le puede dar cualquier nombre al type parameter, por ejemplo: <S>, <Elemento>, etc. Pero por convención, usamos T.
 Y según el tipo de valor pasado a la función, la T se reemplaza por ese tipo de datos (Int, String, etc.).
 
 */

// MARK: - Ejemplo

func displayData<T>(data: T) {
    print("Generic Function:")
    print("Data Passed:", data)
}

// Pasar al argumento valor tipo String
displayData(data: "Swift")

// Pasar al argumento valor tipo Int
displayData(data: 5)



    // MARK: - Ejemplo dos
func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

    // Los parametros son tipo Int
var myFirstGeneric = 5
var mySecondGeneric = 10
 
print("Primer valor \(myFirstGeneric) y segundo valor \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("Primer valor \(myFirstGeneric) y segundo valor \(mySecondGeneric)")

    // Los parametros son tipo String
var nombre = "Miguel"
var apellido = "Ulloa"

print("Mi nombre es \(nombre) y mi apellido es \(apellido)")
swapTwoGenerics(a: &nombre, b: &apellido)
print("Mi nombre es \(nombre) y mi apellido es \(apellido)")




/*
 
 La funcion puede tener mas de un tipo generico
 
 func swapTwoGenerics<T, U>(a: inout T, b: inout T, c: inout U) {
     let tempA = a
     a = b
     b = tempA
 }
 
 Se puede limitar los genericos a cierto tipo, por ejemplo de una clase(SomeClass) y un protocolo(SomeProtocol)
 
 func swapTwoGenerics<T: SomeClass, U: SomeProtocol>(a: inout T, b: inout T, c: inout U) {
     let tempA = a
     a = b
     b = tempA
 }
 */







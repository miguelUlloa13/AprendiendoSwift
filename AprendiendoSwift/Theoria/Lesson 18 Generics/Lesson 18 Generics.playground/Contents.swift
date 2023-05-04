import UIKit

//*************************************************************************

// Generics
// Codigo generigo permite escribir funciones y tipos flexibles que son reutilizables y serviran para tipos que se adapten a ciertos requisitos

    // Sin genericos

func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10
print("El primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")
swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print("El primer valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")

    // Con Genericos

func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstGeneric = 5
var mySecondGeneric = 10
/*
 var myFirstGeneric = "Miguel"
 var mySecondGeneric = "Angel"
 */
print("El primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")
swapTwoInts(a: &myFirstGeneric, b: &mySecondGeneric)
print("El primer valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")

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

//*************************************************************************

/*
 AUTOMATIC REFERENCE COUNTING
 
    Se encarga de eliminar intancias de memoria (objetos o variables). Por eje: Garbage
    collector.
    Swift lleva un contador (Retain Count) interno de las veces que se usa una instancia.
    Un Memory Leak ocurre cuando swift es incapaz de liberar la memoria porque no puede
    acceder a cierta referencia.
 
 */

/*
 Control de acceso en Swift:
 Sirve para que el odigo sea mas seguro, se oculta la implentacion o
 funcionamiento de diferentes partes del programa de los usuario.
 Hay distintos tipos de control acceso:
 
    open: Se puede acceder a ese objeto en cualquier parte del codigo
    public: Se puede acceder a ese objeto en cualquier parte del codigo
    internal: Solo se puede acceder al objeto dentro del modulo/App
    fileprivate: Solo se puede acceder al objeto dentro del fichero
    private: Restringe el uso del objeto solo al contexto que esta definido.
 
 Un control de acceso se puede aplicar a:
    class
    struct
    enum
    var
    let
    func
 
 Por ejemplo:
    public class ejemploClase
    private let ejemploConstante
 
 */




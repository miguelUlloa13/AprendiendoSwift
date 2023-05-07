import UIKit

// MARK: - inout parameters -
// Todos los parámetros pasados a una función de Swift son constantes, por lo que no se pueden cambiar. Pasar uno o más parámetros como inout, significa que se pueden cambiar dentro de su función y esos cambios se reflejan en el valor original fuera de la función.

    // MARK: - Ejemplo sin inout

func squared(value: Int) {
    // value *= value
    // print(value)
    // Error porque el parametro value es constante, no se puede modificar.\
}

    // MARK: - Ejemplo con inout

func squared2(value: inout Int) {
    value *= value
    print(value)
    // Con inout ahora value puede mutar
}

// Para usar el metodo, es necesario declarar una variable del tipo que recibe la función. Y se debe anteponer ampersand & cuando se pase el valor.
var myNum = 5
squared2(value: &myNum)
print(myNum)    // myNum cambia de valor

    // MARK: Ejemplo 2

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


    // MARK: - Como funciona?

/*
 1. Cuando se llama a la función, el valor del parametro es copiado.
 2. Se modifica la copia en el cuerpo de la función.
 3. Cuando la función regresa, el valor de la copia se vuelve a asignar al variable orinal.
 4. Este comportamiento se conoce como copia de entrada y salida (copy-in copy-out) o llamar por resultado de valor (call by value result).
 */

import UIKit

//Operadores Aritmeticos

var sumaEnteros = 0 + 2
var restaEnteros = 9 + 1.7

var sumar = Double(x) + Double(y)

var division = x / 3

var division2 = x / 5   //No se obtiene todo el resultado
//Para obtener el resultado en numero decimal es necesario especificar el tipo de dato

var division3 = Double(x) / 5

//*************************************************************************

// Operador rango doble

var arreglo = [0,1,2,3,4,5,6,7,8,9]

var subarreglo = arreglo[1...3]         // Tomar solo ciertos elementos del arreglo
var subarreglo2 = arreglo[0..<3]

            // Operador rango lado unico

var subarreglo3 = arreglo[...8]
var subarreglo4 = arreglo[2...]

            // Rango cerrado

var rangoCerrado = [1...5]
var subarreglo5 = Array(rangoCerrado[0])

subarreglo5[2]


//*************************************************************************

// Operador de asignacion =

let numeroConstante = 18

// Operadores Aritmeticos + - * /

var numeroVariable = 2

numeroConstante + numeroVariable
numeroConstante - numeroVariable
numeroConstante * numeroVariable
numeroConstante / numeroVariable
numeroConstante % numeroVariable

// Operador compuestos

numeroVariable += 2     //numeroVariable = numeroVariable + 2
numeroVariable -= 2     //numeroVariable = numeroVariable - 2
numeroVariable *= 2     //numeroVariable = numeroVariable * 2
numeroVariable /= 2     //numeroVariable = numeroVariable / 2

// Operadores de comparacion

let x = 1
let y = 2

x == y // Igual ==

x != y // Diferente a !=

x > y // Mayor que >

x < y // Menor que <

x >= y // Mayor o igual que >=

x <= y // Menor o igual que <=

//*************************************************************************

// Operador ternario

/*
 condition ? expression1 : expression2
 
 if condition is true, expression1 is executed.
 if condition is false, expression2 is executed.
 
 */

// The ternary operator takes 3 operands (condition, expression1, and expression2). Hence, the name ternary operator.

// program to check pass or fail
let marks = 30

if (marks >= 40) {
    print("You pass the exam")
} else {
    print("You fail the exam")
}


// Ternary operator instead of if...else
let result = (marks >= 40) ? "pass" : "fail"

print("You " + result + " the exam")

// Nested Ternary Operators

// program to check if a number is positive, zero, or negative
let num = 7

let numresult = (num == 0) ? "Zero" : ((num > 0) ? "Positive" : "Negative")

print("The number is \(numresult).")

// Note: It is recommended not to use nested ternary operators as they make our code more complex.

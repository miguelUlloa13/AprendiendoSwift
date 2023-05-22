import UIKit

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


import UIKit

// Intercambia los valores de num1 y num2 en una sola linea
var num1 = 1
var num2 = 2

// Respuesta
print("Antes")
print("Numero 1 -> \(num1), numero 2 -> \(num2)")

(num1,num2) = (num2,num1)   // Intercambio de valores

print("Despues")
print("Numero 1 -> \(num1), numero 2 -> \(num2)")

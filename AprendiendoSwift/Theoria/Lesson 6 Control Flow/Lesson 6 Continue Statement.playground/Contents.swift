import UIKit

// MARK: Continue Statement
// Continue Statement se usa para omitir la iteración actual del bucle y el flujo de control del programa pasa a la siguiente iteración.


for i in 1...5 {
    
    if i == 3 {
        // Si i es igual a 3, pasar a la siguiente iteración. Ahora i pasa a la siguiente iteracion, i es igual a 4
        continue
    }
    
    print(i)
}


// Solo imprimir la edad de las personas mayores de 18
let edades = [18, 55, 12, 5, 68, 44, 70, 25]

for edad in edades {
    if edad <= 18 {
        continue
    }
    print(edad)
}



// Programa para imprimir numeros impares del 1 al 10

var num = 0

while num <= 10{
  num += 1

  if (num % 2) == 0 {
    continue
}

print("\(num)")
}

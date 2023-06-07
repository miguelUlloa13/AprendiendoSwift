import UIKit

// MARK: - Break Statement -
// Es una instrucción que le puedes dar al programa para que finalice de forma inmediata la ejecución de flujo de control según el parámetro que hayas establecido

let edades: [Int] = [10, 13, 75, 26, 18]
 
    // Si alguien tiene 18 años, romper el ciclo
for numero in edades {
    
    if numero == 18 {
        break
    }
    print(numero)
    
}

 
    // Imprimir los primeros 5 multiplos de 6
var i = 1

while (i<=10) {
  print("6 * \(i) =",6 * i)

    if i >= 5 {
      break
   }
 
  i = i + 1
}
 

    // MARK: - Break en loops anidados (nested loops) -

// outer for loop
for i in 1...3 {

  // inner for loop
  for j in 1...3 {

    if i == 2 {
      break
    }

    print("i = \(i), j = \(j)")
  }
}


// MARK: -Labeled Statement with break -

// Se puede etiquetar los cicles, esto es muy util para identificar que loop detener

outerloop: for i in 1...3{

  innerloop: for j in 1...3 {

    if j == 3 {
      break outerloop
    }
      print("i = \(i), j = \(j)")
  }
}

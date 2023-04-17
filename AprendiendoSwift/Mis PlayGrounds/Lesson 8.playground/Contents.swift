import UIKit

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

var age = 10

while age < 18 {
    
    print("Eres menor de edad. Te faltan \(18 - age) anios")
    age += 1
    
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


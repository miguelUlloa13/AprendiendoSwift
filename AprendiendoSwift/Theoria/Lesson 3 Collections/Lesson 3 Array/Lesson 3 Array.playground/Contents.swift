import UIKit


// MARK: - Collections -
// Colecciones

    // MARK: - Arreglos (Array)
    // Un arreglo o matriz es una colección de tipos de datos similares.
    // Es una coleccion de tipo ordenada
    // Los arreglos solo aceptan un solo tipo de valor: int, float, String

    // MARK: - Declarar un arreglo
// Arreglo variable
var arregloNumeros = [1,2,3]

// Arreglo constante
let arregloNumerosInmutable = [1,2,3]

// Arreglo vacio
var arregloVacioUno: Array<Int> = []

// Otra forma de declara un rreglo vacio
var arregloVacioDos = [String]()


print(arregloNumeros)

print(arregloNumeros[2])    //Los arreglos empizan desde la posicion 0

print(arregloNumerosInmutable[1])

            // MARK: Agregar valores

arregloNumeros.append(5)    //Metodo append sirve para agregar elemeto al final del arreglo
print(arregloNumeros)

arregloNumeros.insert(4, at: 3)     //insert es para agregar elementos en cierta posiion del arreglo (reemplazar)
print(arregloNumeros)

            // MARK: Eliminar valores

arregloNumeros.removeLast()     // Eliminar el ultimo elemento del arreglo
print(arregloNumeros)

arregloNumeros.remove(at: 3)
print(arregloNumeros)

arregloNumeros.removeAll()      // Eliminar todos los elementos
print(arregloNumeros)

var arregloVacio: [Int] = []    // Arreglo vacio de enteros
var arregloVacio2 = [Int]()
print(arregloNumeros)











    
var arrayOne = [3, 2, 5, 1, 8, 9, 7, 4, 0, 6]
let dictionaryOne = [3: "Three",
                 2: "Two",
                 5: "Five",
                 1: "One",
                 8: "Eight",
                 9: "Nine",
                 7: "Seven",
                 4: "Four",
                 0: "Zero",
                 6: "Six"]
let setOne: Set = [3, 2, 5, 1, 8, 9, 7, 4, 0, 6]

    // MARK: - Reversed
        // Invertir los valores de la coleccion
print(arrayOne)
print(arrayOne.reversed() as [Int])
    // Los diccionarios como el set son colecciones desordenadas, por le que el metodo reset arroja un resultado aleatorio





    // MARK: - count
        // Numero de elementos en un arreglo
arrayOne.count
dictionaryOne.count
setOne.count

    // MARK: - isEmpty
        // Conocer si la coleccion esta vacia
arrayOne.isEmpty    // False: No esta vacio
dictionaryOne.isEmpty
setOne.isEmpty

let otherArray = [Int]()
let otherdictionary = [Int:String]()
let otherSet: Set<String> = []

otherArray.isEmpty  // True: Esta vacio
otherdictionary.isEmpty
otherSet.isEmpty


    // MARK: - first
        // Retornar el primer elemento de la coleccion
        // first retorna un opcional en dado que no exista el valor retorna nulo (nil)
        // En diccionarios y set arroja un valor aleatorio dentro de la coleccion
print(arrayOne.first != nil)
print(arrayOne.first)


    // MARK: - last
        // Retornar el ultimo elemento de la coleccion
        // No se puede ejecutar en diccionarios y set arroja
print(arrayOne.last != nil)
print(arrayOne.last)


    // MARK: - drop y pop
        // dropFirst() elimina el primer elemento y devuelve los elementos restantes de la matriz.


print(arrayOne)
print(arrayOne.dropLast())

print(arrayOne)
print(arrayOne.dropLast(2)) // Elimina los 2 ultimos elementos

print(arrayOne)
print(arrayOne.dropFirst())

print(arrayOne)
print(arrayOne.dropFirst(2))    // Elimina los 2 primeros elementos


print(arrayOne)
print(arrayOne.popLast())



    // MARK: - firstIndex(of:)
        // El método indica cual es el índice de un elemento en una matriz si existe, o devuelve nil de lo contrario. Debido a que es un valor opcional, se debe desenvolver con cuidado o al menos verificar el resultado.

let arrayFruits = ["Apples", "Peaches", "Plums"]
if let index = arrayFruits.firstIndex(of: "Peaches") {
    print("Found peaches at index \(index)")
}

arrayFruits.firstIndex(of: "App") ?? 404  // Si no encuentra el valor en el arreglo, arrojara 404


    // MARK: - enumerated()

    // enumerated() devuelve una secuencia de pares (n, x), donde n representa un número entero consecutivo que comienza en cero y x representa un elemento de la secuencia.
    // Sirve para indicar la posicion de cada elemento en la colecction
    // Enumerar una matriz en Swift es útil al recorrer matrices. A veces, necesita saber el índice de cada elemento al realizar un bucle.

let cars = ["Vocho", "Tsuru", "Sedan"]

for (index, item) in cars.enumerated() {
    print("Auto \(item) en posición \(index)")
}

var swiftArray = "Swift".enumerated()
for (n, c) in "Swift".enumerated() {
    print("\(n): '\(c)'")
}


let abecedario = ["a", "b", "c", "d", "e", "f", "g"]
for par in abecedario.enumerated() {
    print(par) // Imprimira el indice (offset) y el elemento (element)
}



var information = ["Charlie": 54, "Harvey": 38, "Donna": 34]

// use enumerated() to iterate through a dictionary
for (index, key_value) in information.enumerated() {
   print("\(index): \(key_value)")
}


    // Con enumerate sustituye crear un index (i) separado y tenerlo que actualizarlo en cada iteracion, como en el ejemplo de abajo:

let friendsArray = ["Alice", "Bob", "Charlie"]
var i = 0
for name in friendsArray {
    print(name, i)
    i += 1
}

    // Con enumerated ya indica la posicion de cada elemento en el arreglo
let namesWithIndex = friendsArray.enumerated()
for (index, name) in namesWithIndex {
    print("\(name) is at position \(index)")
}




    // MARK: - Array methods -



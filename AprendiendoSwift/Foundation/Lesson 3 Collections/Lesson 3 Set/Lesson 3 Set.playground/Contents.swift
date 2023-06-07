import UIKit


// MARK: - Sets
    // Conjuntos
    // Un conjunto es una colección de datos únicos. Es decir, los elementos de un conjunto no se pueden duplicar. Ademas los datos no estan ordenados y solo permite de un tipo

// Formas de inicializar un set
var mySet = Set<String>()   // () Inicializar a vacio
let mySet2: Set<String> = []    // [] Inicializar a vavio

let mySet3: Set<String> = ["Miguel", "Ulloa", "24", "Ulloa"]
print(mySet3)   // Imprime de forma desordenada

// El set reconoce la inferencia de tipos
let mySet4: Set = ["Miguel", "Ulloa", "24", "Ulloa"]

// Insercion uno a uno
mySet.insert("Miguel")
mySet.insert("Hola")
mySet.insert("Swift")
mySet.insert("Miguel")
print(mySet)

// Acceso a datos
if mySet.contains("Swift") {
    print("Mi conjuto contiene el dato")
} else {
    print("No contiene ese dato")
}

if mySet.contains("Swiftttt") {
    print("Mi conjuto contiene el dato")
} else {
    print("No contiene ese dato")
}


// Modificacion
mySet.remove("Miguel")
print(mySet)


// Acceso y modificacion por indice
if let index = mySet.firstIndex(of: "Swift") {
    print(index)
    mySet.remove(at: index)
    // Se debe colocar en un if-let para eliminar indices que existen en el diccionario
}

print(mySet)


// Iteracion
mySet.insert("Perro")
mySet.insert("Loro")
mySet.insert("Paloma")
mySet.insert("Gallo")
print(mySet)

for myElement in mySet {
    print(myElement)
}


// Opericones de conjunto

let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// intersección
// Dados dos conjuntos A(myIntSet) y B(myIntSet2), su intersección es otro subconjunto cuyos elementos, necesariamente, pertenecen a ambos conjunto

print(myIntSet.intersection(myIntSet2))

// Diferencia simetrica
// La diferencia simétrica es el conjunto de elementos que solo pertenecen a A o a B pero no a ambos a la vez.

print(myIntSet.symmetricDifference(myIntSet2))

// Unión
// La Unión de dos o más conjuntos es el conjunto formado por todos los elementos que pertenecen a ambos conjuntos. Pero no se repite los elementos duplicados

print(myIntSet.union(myIntSet2))

// Sustracción
// La diferencia de dos conjuntos es una operación que da como resultado otro conjunto con los elementos del primer conjunto sin los elementos del segundo conjunto.

print(myIntSet.subtracting(myIntSet2))
print(myIntSet2.subtracting(myIntSet))



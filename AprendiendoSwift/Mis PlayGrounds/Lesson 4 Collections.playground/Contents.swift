import UIKit


    // MARK: - Collections -
        // Colecciones

        // MARK: - Arreglos (Array)
            // Un arreglo o matriz es una colección de tipos de datos similares.

var arregloNumeros = [1,2,3]    // Declarar un arreglo
let arregloNumerosInmutable = [1,2,3]

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
print(arregloNumeros)



        // MARK: - Dictionary
            // Diccionario
            // El diccionario es una colección desordenada de elementos. Almacena elementos en pares clave/valor. Aquí, las claves son identificadores únicos que están asociados con cada valor.

let myClassicDictionary = Dictionary<Int, String>()     // Primera forma de declarar un diccionario
var myModernDictionary = [Int:String]()

        // Agregar datos

myModernDictionary = [001:"Miguel", 002:"Angel"]    // Inicializar el diccionario

        // Agregar otro datos

myModernDictionary[003] = "Martinez"
myModernDictionary[004] = "Ulloa"
print(myModernDictionary)
myModernDictionary[004] = "Ulloa"
print(myModernDictionary)       // Las claves no se pueden repetir, no hay claves duplicadas

        // Acceso a un dato
myModernDictionary[002]
myModernDictionary[002] = "Reemplazado"     // Reemplazar un dato del diccionario
myModernDictionary.updateValue("Reemplazado2", forKey: 002)
myModernDictionary[002]

        // Borrar dato
myModernDictionary[002] = nil
myModernDictionary[002]

myModernDictionary[002] = "Reemplazado"
myModernDictionary.removeValue(forKey: 002)
myModernDictionary[002] = nil

var capitalCity = ["Nepal": "Kathmandu", "Italy": "Rome", "England": "London"]  // Diccionario de solo tipo String
print(capitalCity)



    // MARK: - Tuples
        // Tuplas
            // Los arreglos solo aceptan un solo tipo de valor: int, float, String
            // Las tuplas es una coleccion de distion tipos de valores

var persona = ("Miguel", "Martinez", 23, 1.68)     // Declarar una tupla

        // Acceder a los datos de una tupla

persona.0

var (nombre, apellido, edad, estatura) = persona

nombre

var personaNamedTuples = (nombre2: "Angel", apellido2: "Ulloa", edad: 24, estatura: 1.70)
personaNamedTuples.nombre2


typealias ConferencePropertiesTuple = (pavilionName: String, auditoryName: String, letterPavilion: String)
    // Arreglo de pabellones
var auditoryAndPavilionsValues: [ConferencePropertiesTuple] = [
    ("Pabellon A", "Auditorio Alfa", "A"),
    ("Pabellon B", "Auditorio Bravo", "B"),
    ("Pabellon C", "Auditorio Charlie", "C"),
    ("Pabellon D", "Auditorio Delta", "D"),
    ("Pabellon E", "Auditorio Eco", "E"),
    ("Pabellon F", "Auditorio Foxtrot", "F")
]

for (pavilion, auditory, letter) in auditoryAndPavilionsValues {
    
    print("\(pavilion) --- \(auditory) --- \(letter)")
    
}

auditoryAndPavilionsValues[5].auditoryName



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


    
    
    // MARK: - Algoritmos en colecciones -

var arrayOne = [3,2,5,1,8,9,7,4,0]
let dictionaryOne = [3: "Three",
                     2: "Two",
                     5: "Five",
                     1: "One",
                     8: "Eight",
                     9: "Nine",
                     7:"Seven",
                     4: "Four",
                     0:"Zero"]
let setOne: Set = [3,2,5,1,8,9,7,4,0]

        // MARK: - Sort
            // El método sort() ordena los elementos de un array en un orden específico (ascendente o descendente).
print(arrayOne)
arrayOne.sort()
print(arrayOne)

            // Las colecciones de tipo set y dictionary no se pueden ordenar, por lo que no soportan el metodo sort.
            // El arreglo debe ser var porque al ejecutar sort, este modificara su estructura

        // Sort con condicion personalizada
arrayOne.sort { intA, IntB in
    return intA > IntB  // Orden descendente
}
print(arrayOne)

        // MARK: - Sorted
let arrayTwo = [3,2,5,1,8,9,7,4,0]
print(arrayTwo)

var myArraySorted = arrayTwo.sorted()
print(myArraySorted)

            // Sorted no modifica la estructura de arrayTwo, el array se conserva como se definio

        // Sorted con condicion personalizada
myArraySorted = arrayTwo.sorted(by: {intA, IntB in
    return intA > IntB  // Orden descendente
})
print(myArraySorted)

            // Sorted si se puede ejecutar en colecciones de tipo set y dictionary

let mySortedDictionary = dictionaryOne.sorted { elementoA, elementoB in
    return elementoA.key < elementoB.key    // Orden ascendente
}

print(mySortedDictionary)
            // Debido a que un diccionario no es una coleccion de tipo ordenado, sorted no regresa un diccionario, mas bien regresa un array de tuple


var mySortedSet = setOne.sorted()
print(mySortedSet)
            // Sorted en un set devuelve un arreglo


mySortedSet = setOne.sorted { intA, intB in
    return intA > intB
}
print(mySortedSet)


    // MARK: - Array methods -



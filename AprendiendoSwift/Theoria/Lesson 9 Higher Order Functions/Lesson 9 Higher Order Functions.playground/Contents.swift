import UIKit

// MARK: - Algoritmos en colecciones -

// Las funciones de orden superior son simplemente funciones que operan en otras funciones tomando una función como argumento o devolviendo una función.
// Estos metodos tienen Rethrows porque aceptan funciones que tambien pueden lanzar errores
// Rethrows en Swift permite reenviar un error lanzado por un parámetro de función dado. Se usa mucho en métodos como map, filter y forEach y ayuda al compilador a determinar si se necesita o no un prefijo de prueba.

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

// MARK: - forEach
// Iterar sobre una coleccion
// Alternativa al ciclo for

arrayOne.forEach { $0
    return print($0)    // El $0 indica el primer parámetro
}

print(" ")

arrayOne.forEach { myInt in
    return print(myInt)     // myInt y $0 son iguales, indican el primer parametro o elemento
}

print(" ")

dictionaryOne.forEach { myElement in
    return print(myElement.key)
}

print(" ")

dictionaryOne.forEach { $0
    print($0)   // Devuelve tanto la llave como el valor
}

print(" ")

dictionaryOne.forEach { $0
    print($0.key)   // Devuelve solo la llave
}

print(" ")

setOne.forEach { $0
    print($0)   // Devuelve solo la llave
}


let helloString = "Hello"
helloString.forEach { element in
    print(element)  // Devuelve cada caracter del string
}



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
let arrayTwo = [3, 2, 5, 1, 8, 9, 7, 4, 0, 6]
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
// Ejecutar Sorted en un set devuelve un arreglo


mySortedSet = setOne.sorted { intA, intB in
    return intA > intB
}
print(mySortedSet)




// MARK: - filter
// El método filter() devuelve todos los elementos de la array que cumplen la condición proporcionada.
// filter acepta un closure que acepta una condición y devuelve un valor Bool.
// Devuelve todos los elementos del array que satisfacen la condición proporcionada

print(arrayOne)
var myFilterArray = arrayOne.filter({ $0 > 5})
print(myFilterArray)


print(dictionaryOne)
var myFilterDictionary = dictionaryOne.filter { myElement in
    return myElement.value.hasPrefix("T")   // Filtra todos los valores que contengan la letra "T" al inicio del string
}
print(myFilterDictionary)

myFilterDictionary = dictionaryOne.filter { myElement in
    return myElement.value.hasPrefix("O")
}
print(myFilterDictionary)

//

var showFavorites: Bool = false

struct Student {
    var name:String
    var favorite: Bool
}

let students: [Student] = [Student(name: "Alejandra", favorite: true),
                           Student(name: "Sara", favorite: false),
                           Student(name: "Pablo", favorite: false),
                           Student(name: "Sam", favorite: false),
                           Student(name: "Miguel", favorite: true)]

var filterStudent: [Student] {
    return students.filter { myFavoriteStudent in
        return !showFavorites || myFavoriteStudent.favorite
    }
}

print(filterStudent)



// MARK: - Map
// Mapeo
// El método map() transforma la matriz aplicando la misma operación a cada elemento de la matriz.

var arrayThree = [3, 2, 5, 1, 8, 9, 7, 4, 0, 6]
let myMapArray = arrayThree.map { myInt in
    return myInt + 10
}
print(myMapArray)   // A cada elemeto del arreglo se le suma 10

let myMapArray2 = arrayThree.map { myInt in
    return "Este es el numero \(myInt)"
}
print(myMapArray2)  // El arreglo de tipo entero pasa a ser un array de tipo string

print(dictionaryOne)
let myMapDictionary = dictionaryOne.map { myElement in
    return myElement.key
}
print(myMapDictionary)  // Imprime un array de enteros

let myMapDictionary2 = dictionaryOne.map { myElement in
    return "\(myElement.key)"
}
print(myMapDictionary2) // Imprime un array de strings de las llaves del diccionario

let myMapSet = setOne.map { myElement in
    myElement
}
print(myMapSet) // Imprime un array con los elementos del set


var numbers = [1, 2, 3, 4]

var result = numbers.map({ $0 + 2})
print(result)   // A cada elemento del arreglo se le suma 2

result = numbers.map({ $0 * 2})
print(result)   // A cada elemento del arreglo se le multiplica por 2


var languages = ["swift", "java", "python"]

print("Antes:", languages)
var uppercasedLanguages = languages.map { $0.uppercased() }
print("Despues:", uppercasedLanguages)   // Los strings pasan a mayuscula





import UIKit

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

// Iterando en un diccionario

// Iterando atraves del keys-values
print("Iterando atraves de los keys-values")
for (key, value) in capitalCity {
    print("Key: \(key) ->", "Value: \(value)")
}

// Iterando solo atraves en keys
print("Iterando solo atraves en keys 1ra forma")
for (key, _) in capitalCity {
    print("Key: \(key)")
}

print("Iterando solo atraves en keys 2a forma")
for key in capitalCity.keys {
    print("Key: \(key)")
}

// Iterando solo atraves en values
print("Iterando solo atraves en values 1ra forma")
for (_ ,value) in capitalCity {
    print("Value: \(value)")
}

print("Iterando solo atraves en values 2a forma")
for value in capitalCity.values {
    print("Value: \(value)")
}

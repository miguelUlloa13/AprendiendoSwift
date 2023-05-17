import UIKit

// Crea una función que remueva todas las letras duplicadas en un string

let helloString = "Hello"

// 1ra forma
func removeDuplicateWords(_ yourString: String) -> String {

    let nonDuplicates = Set(yourString)
    return String(nonDuplicates)
    
}

print(removeDuplicateWords(helloString))

// 2da forma
func removeDuplicateWords2(_ yourString: String) -> String {
    var result: [Character] = []
    for letter in yourString {
        if !result.contains(letter) {
            result.append(letter)
        }
    }
        return String (result)
}

print(removeDuplicateWords2(helloString))


// 3ra forma
func removeDuplicateWords3(_ yourString: String) -> String {
    var dict = [String: Bool]()
    let string = yourString.filter { yourString in
        dict .updateValue (true, forKey: String (yourString)) == nil
    }
    return string
}

print(removeDuplicateWords3(helloString))


// 4a forma

func removeDuplicateWords4(_ yourString: String) -> String {

    var mySet = Set<Character>()
    let nonDuplicates = yourString.filter { element in
        mySet.insert(element).inserted
    }
    // nonDuplicates = es un tipo String que almacena yourString cuando llama al metodo filter.
    // lo que hace filter es insertar uno a uno los caracteres de yourString y se llama a inserted() porque filter devulve un bool.
    return nonDuplicates
}
// yourString = Hello
// iteración =      1       2       3       4       5
// element =        H       e       l       l       o
// inserted =       true    true    true    false   true

// mySet =          H       e       l       o
// nonDuplicates =  H       e       l       o

print(removeDuplicateWords3(helloString))



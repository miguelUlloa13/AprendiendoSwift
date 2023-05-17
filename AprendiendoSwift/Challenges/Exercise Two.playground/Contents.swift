import UIKit

// Recrea la funcion 'map'
    // [1, 2, 3].myMapFunction{ String($0)
    // should return ["1", "2","3"]

let arrayString = [1, 2, 3].map { String($0)}
print(arrayString)


extension Collection {
    
    func myMapFunction<T>(_ operation: (Element) throws -> T) rethrows -> [T] {
        var result: [T] = []
        for element in self {
            result.append(try operation (element))
        }
        return result
    }
}


let arrayString2 = [1, 2, 3].myMapFunction { String($0) }
print(arrayString2)

// Element: Es un tipo que representa los elementos de la secuencia.

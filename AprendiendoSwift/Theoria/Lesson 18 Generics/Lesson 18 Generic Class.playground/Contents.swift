import UIKit

// MARK: - Generics Class -
    // Se puede crear una clase que se puede usar con cualquier tipo de datos. Tal clase se conoce como Clase Genérica.


/// Clase generica
class Information<T> {

  // Propiedad tipo generico
  var data: T

  init (data: T) {
    self.data = data
  }

    //
    /// Metodo para retornar data
    /// - Returns: data
  func getData() -> T {
    return self.data
  }
}

// Se inicializa la clase Information con un valor tipo Int
var intObj = Information<Int>(data: 6)
print("Generic Class returns:", intObj.getData())

// Se inicializa la clase Information con un valor tipo String
var strObj = Information<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())

import UIKit

    // MARK: - Singleton

/*
    Los singletons son objetos que solo deben crearse una vez y luego compartirse en todos los lugares donde deben usarse. Son comunes en las plataformas de Apple: FileManager, UserDefaults, UIApplication y UIAccelerometer se utilizan principalmente a través de sus implementaciones singleton.

    La implementación básica de un singleton Swift se ve así:
*/

class FileManager{

     // create a singleton
    static let fileObj = FileManager()

     // create a private initializer
    private init() {
  
    }

     // method to request file
    func checkFileAccess(user: String) {

          // condition to check username
          if user == ("@programiz.com") {

            print("Access Granted")
          }

          else {
            print(" Access Denied")
          }
    }
}

let userName = "@programiz.com"

// access method
// Mism objeto
let file = FileManager.fileObj
let file2 = FileManager.fileObj


file.checkFileAccess(user: userName)
file2.checkFileAccess(user: userName)

/*
 
 Agregar un inicializador privado es importante, porque evita que otras partes de nuestro código intenten crear una instancia de clase de Configuración. Sin embargo, la clase crea su propia instancia de sí misma como una variable estática, lo que significa que la única instancia de la clase Configuración es la que creó: Configuración.compartida.
 
 */



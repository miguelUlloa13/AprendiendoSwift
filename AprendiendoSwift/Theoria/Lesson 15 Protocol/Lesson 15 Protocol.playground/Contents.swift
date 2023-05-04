import UIKit

    // MARK: - Protocolo
        // Sirve para definir un modelo o plantilla de metodos, propiedades y otros requisitos para que una clase, estructura o una enumeracion se adapten a ellos
        // Obliga a la clase, estrucutra o enumeracion a que adopte una serie de propiedades y funciones. Conforme una serie de propiedades que implementara.
        // Una recomendacion es agregar "protocol" al nombre del protocolo para distinguirlos de las clases

    // MARK: - Sintaxis:

/*

    protocol nombreProtocolo {
 
        var atributoUno: Tipo { get }
        var atributoDos: Tipo { set }
        var atributoTres: Tipo { get set }

        func metodoUno() -> tipoDeRetorno

    }
 
get: solo se puede acceder a la propiedad (leer el valor de la variable)
set: solo se puede asignar a la propiedad (escribir el valor de la variable)
get set: se puede acceder y asignar a la propiedad

*/

    // MARK: Ejemplo

    // MARK: - PersonProtocol
protocol PersonProtocol {
    
    // MARK: - Properties
    var name: String { get set}
    var age: Int { get set }

    
    // MARK: - Methods
    func fullName() -> String
}


    // MARK: - Programmer
/// Programmer struct that implements the PersonProtocol protocol
struct Programmer: PersonProtocol {
    var name: String
    var age: Int
    
    var language: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad \(age) y su lenguaje favorito es \(language)"
    }
}


    // MARK: - Teacher
/// Teacher struct that implements the PersonProtocol protocol
struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad \(age) e imparte la asignatura de \(subject)"
    }
}


    // Instanciando las structs (crear los objetos)
let myProgrammer = Programmer(name: "Miguel", age: 23, language: "Swift")
let myTeacher = Teacher(name: "Juan", age: 35, subject: "Programacion")

print(myProgrammer.fullName())
print(myTeacher.fullName())



    // MARK: Ejemplo de un protocolo con extensión
        // Sirve para agregar mas metodos a un protocolo sin agregarlo necesariamente a la clase que implementa ese protocolo.
        // Se extiende un protocolo para que los que lo conformen (class, struct, etc) no lo tengan que implementar

protocol Animatable {
    func animate()
}

extension Animatable {
    func animate() {
        print("Start Animation")
    }
}

class MyCustomView: Animatable{
    // No se agrego el metodo animate() a la clase pero se puede invocar
}

class MyCustomView2: Animatable{
    // Se agrego el metodo animate()
    func animate() {
        print("Hola")
    }
}

let myView = MyCustomView()
myView.animate()

let myView2 = MyCustomView2()
myView2.animate()



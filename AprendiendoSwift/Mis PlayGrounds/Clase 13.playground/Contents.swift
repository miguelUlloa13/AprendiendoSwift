import UIKit

//*************************************************************************

// Protocolo
        // Sirve para definir un modelo de metodos, propiedades y otros requisitos para que una clase, estructura o una enumeracion se adapten a ellos
        // Obliga a la clase, estrucutra o enumeracion a que adopte una serie de propiedades y funciones. Conforme una serie de propiedades que implementara.

        // Ejemplo de un protocolo que obligara que las clases o estructuras tengan una serie de variables y funciones
protocol PersonProtocol {
    // Propiedades
        // Todas las personas tienen nombre y edad
    var name: String { get set}    // La propiedad name se puede obtener con get y con set se le puede asignar un valor. Se puede escribir y leer la propiedad
    var age: Int { get set }
    /*
     var name: String { get }   // solo se puede acceder a esta propiedad (leer el valor de la variable)
     var name: String { set }   // solo se puede asignar a esta propiedad (escribir el valor de la variable)
     */
    
    // Metodos
    func fullName() -> String
}

struct Programmer: PersonProtocol {
    var name: String
    var age: Int
    
    var language: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad \(age) y su lenguaje favorito es \(language)"
    }
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad \(age) e imparte la asignatura de \(subject)"
    }
}

let myProgrammer = Programmer(name: "Miguel", age: 23, language: "Swift")
let myTeacher = Teacher(name: "Juan", age: 35, subject: "Programacion")

print(myProgrammer.fullName())
print(myTeacher.fullName())

            // Ejemplo de protocolo con extencion

protocol Animatable {
    func animate()
}

extension Animatable {
    func animate() {
        print("Start Animation")
    }
}

class MyCustomView: Animatable{ }
let myView = MyCustomView()
myView.animate()

        // Se puede extender un protocolo para que los que lo conformen (class, struct, etc) no lo tengan que implementar

//*************************************************************************

// Protocolo delegado
        // Permite comunicar dos clases en sentido inverso
        // Delegar es encomendar la tarea a otro elemento

class FirsClass: SecondClassProtocol {
    
    func callSecond () {
        // La primera clase va a ser la encargada de llamar la segunda clase
        let secondClass = SecondClass() // Se instancia la segunda clase
        secondClass.delegate = self     // Se delega el protocolo
        secondClass.callFirst()         // Se llama la operacion de la segunda clase
    }
    func call() {
        print("Estoy de vuelta!")
    }
}

protocol SecondClassProtocol {
    
    func call ()
}

class SecondClass {
    
    var delegate: SecondClassProtocol?
    
    func callFirst () {
        
        sleep(5)            // Dormir o se ejecutara despues de 5 segundos
        
        delegate?.call()    // Con esto se simula una operacion asincrona, el cual no se ejecutara al momento de ejecutar call first
    }
}

let firstClass = FirsClass () // Se instancia la primera clase
firstClass.callSecond() // La primera clase va a instanciar a la segunda


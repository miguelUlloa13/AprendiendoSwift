import UIKit

//*************************************************************************

        // Optional binding || Encadenamiento de enlaces opcionales
            // Sirve para comprobar de forma segura que las variable no son nulas

var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString = "Miguel"
myOptionalString2 = "Angel"
myOptionalString3 = "23"

if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3  {
    // Este bloque de condigo se ejecutara cuando el valor de myOptionalString,
    // myOptionalString2 y myOptionalString3 sea distinto de nulo
    print("\(myString) \(myString2) \(myString3)")
}else if let myString = myOptionalString {
    // Este bloque de condigo se ejecutara cuando el valor de myOptionalString sea
    // distinto de nulo
    print("myOptionalString posee un valor no nulo = \(myString)")
}else{
    print("Alguna variable es nula")
}

//*************************************************************************

    // Desempaquetado forzado
            // Sirve para obligar a la variable mostrar sus valor, solo se usa
            // en cierto punto del programa se esta seguro que la variable tiene
            // un valor

print(myOptionalString!)

if myOptionalString2 != nil {
    
    print(myOptionalString2!)
    
}

//*************************************************************************

    // Optional chaining || cadenas de opcionales
        // Se accede a los atribtos opcionales de una clase

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var page:Int?
}

let myStudent = Student()

print(myStudent.name)
print(myStudent.book?.page)

//*************************************************************************

    // Enlace opcional encadenados

myStudent.name = "Miguel"

let myBook = Book()
myBook.page = 56

myStudent.book = myBook

if let pages = myStudent.book?.page, let name = myStudent.name{
    // Pages sera verdadero hasta que myStudent, book y page sea distinto de nulo
    print("El libro de \(name) tiene \(pages) paginas")

}else{
    print("El libro no tiene paginas")
}

//*************************************************************************

    // Guard let || Salida rapida
            // Guarda let: permite detener la ejecucion del programa
            /*
                Con if let: cuando una variable es distinta de nula se ejecutara
                el bloque de codigo. Pero on Guard let, se ejecuta el bloque de
                codigo cuando es nula la varaible
            */
var myOptionalString4: String?

func myFunc() {
    
    guard let myString = myOptionalString4 else {
        // Si se cumple la condiion se detiene la ejecucion de la funcion
        print("myString es nulo")
        return
    }
    print("El valor de myString es \(myString)")
    
}

myFunc()

myOptionalString = "Hola mundo"

myFunc()


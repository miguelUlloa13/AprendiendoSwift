import UIKit


    // MARK: - Optionals -

        /* Los optionals manejan las ausencias de valor representando las ausencias de valor.
         Opcional representa dos probabilidades, es decir, hay un valor o no hay ningún valor.
        */
            // Sirven para declarar variables o constantes que pueden ser nulos

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Miguel"
let myWorngIntNumber: Int? = Int(myWrongStringNumber)

var myOptionalString: String?
print(myOptionalString)
/* Al momento de escribir un dato con un interrogante se va a iniciallizar como nulo
   ya que no tiene un valor, ademas puedes no tenerlo
*/



    // MARK: - Formas de desempaquetar(unwrap) opcionales -

    // MARK: - 1. Con un if else

//myOptionalString = "Hola mundo"

if myOptionalString != nil {
    print ("Varable con valor distinto a nulo")
} else{
    print("Variable nula")
}

    // MARK: - 2. Desempaquetado forzado (Forced unwrapping)

let estatura: Float?

estatura = 1.70

    // Usando el signo de exclacamacion ! se accede el valor del opcional pero se corre el riesgo de que ocurra un error si es nulo
    // Sirve para obligar a la variable mostrar sus valor, solo se usa en cierto punto del programa que se esta seguro que la variable tiene un valor

print(estatura!)


    // MARK: - 3. Optional binding o Enlaces opcionales o if let
            // Sirve para comprobar de forma segura que las variable no son nulas

var isNil : Int?
isNil = 25

if let showIsNil = isNil {
    // Este bloque se ejecutara cuando la variable sea distinto de nulo.
    print("El valor de la variable es: \(showIsNil)")
} else {
    // Este bloque se ejecutara cuando la variable sea nulo.
    print("El valor es nulo")
}

    // MARK: Ejemplo de Encadenamiento de enlaces opcionales:
        // El encadenamiento de enlaces opcionales sirve para evaluar varias variables opcionales
var myOptionalString1: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString1 = "Miguel"
myOptionalString2 = "Angel"
myOptionalString3 = "23"

if let myString1 = myOptionalString1, let myString2 = myOptionalString2, let myString3 = myOptionalString3  {
    // Este bloque de condigo se ejecutara cuando el valor de myOptionalString, myOptionalString2 y myOptionalString3 sea distinto de nulo
    print("\(myString1) \(myString2) \(myString3)")
}else if let myString1 = myOptionalString1 {
    // Este bloque de condigo se ejecutara cuando el valor de myOptionalString1 sea distinto de nulo
    print("myOptionalString posee un valor no nulo = \(myString1)")
}else{
    print("Alguna variable es nula")
}

    // Desempaquetado forzado
print(myOptionalString1!)





// MARK: - 4. Optional chaining o Cadenas de opcionales o Enlace opcional encadenado

    // Acceder a los atributos o metodos opcionales de una clase
    // Se llama encadenamiento porque se pueden encadenar varias consultas y si algún enlace de esta cadena es nulo, toda la cadena falla correctamente.
    // El encadenamiento opcional es un proceso para consultar y llamar a propiedades, métodos y subíndices en un opcional que actualmente podría ser nulo. Si el opcional contiene un valor, la llamada a la propiedad, al método o al subíndice tiene éxito; si el opcional es nil, la llamada a propiedad, método o subíndice devuelve nil. Se pueden encadenar varias consultas, y toda la cadena falla correctamente si algún eslabón de la cadena es nulo.
    

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var page:Int?
}

let myStudent = Student()


print(myStudent.name)       // Nil
print(myStudent.book?.page) // Nil
    // El encadenamiento opcional se especifica después del valor opcional con '?' para llamar a una propiedad o metodo cuando el valor opcional retorna algunos valores.


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


    // MARK: Ejemplo


class AnotherStudent {
    var degree: Course?
}

class Course {
    var courseTitle = "Programacion"
}

let miguel = AnotherStudent()
// let courseName = miguel.degree!.courseTitle     // Nil
    // Esto producira un error porque se desempaca forzadamente. La propiedad degree se inicializa de manera predeterminada en nil porque es opcional.


if let courseName = miguel.degree?.courseTitle {
    print("Miguel esta estudiando \(courseName).")
}
else {
    print("Imposible acceder al tipo de curso.")
}
// Prints "Unable to retrieve course name.

miguel.degree = Course()

if let courseName = miguel.degree?.courseTitle {
    print("Miguel esta estudiando \(courseName).")
}
else {
    print("Imposible acceder al tipo de curso.")
}
// Prints "Miguel esta estudiando."




    // MARK: Ejemplo 2


class FabricaCarros{
    var asientos:Int?
    var tipoTapizado:String?
    
    init(numeroAsientos:Int){
        asientos = numeroAsientos
    }

    func mostrarCalidadAsiento(){
        if let tapizado = tipoTapizado{
            print("El recubrimiento del asiento esta hecho de: \(tapizado)")
        } else {
            print("No tiene recubrimiento el asiento")
        }
    }

    

}

class VerificarAsientos{
    var asientoExiste:FabricaCarros?

}


var obj = FabricaCarros(numeroAsientos:4)   // Ya existe el auto con 4 asientos
var obj2:VerificarAsientos? = VerificarAsientos()
obj2?.asientoExiste = obj   // Ya se verifico que existe un auto con 4 asientos
obj2?.asientoExiste?.tipoTapizado = "Cuero" //Optional chaining, set leather quality of seats, only if seats exist.
obj.mostrarCalidadAsiento()
//Output: The seat covering is made of: Leather


var obj3: FabricaCarros?
var obj4: VerificarAsientos? = VerificarAsientos()
obj4?.asientoExiste?.tipoTapizado = "Vinil"

obj3?.mostrarCalidadAsiento()   // Nil porque todo lo que este después del símbolo de pregunta sólo será devuelto si lo que está antes tiene un valor. En este ejemplo, mostrarCalidadAsiento() solo se ejecutara si obj3 tiene valor



    // MARK: Ejemplo 3

let miNombre = "Miguel"
miNombre.uppercased()

var miNombre2: String?
miNombre2?.uppercased() // Mediante el signo de interrogacion ? no se ejecuta uppercased() porque no hay valor miNombre2

// miNombre2 = "Angel"
// miNombre2?.uppercased()

if let _ = miNombre2 {
    print("Si existe mi nombre2")
} else {
    print("No existe mi nombre2")
}

    // MARK: Ejemplo 4

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

// let roomCount = john.residence!.numberOfRooms
// this triggers a runtime error

john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Prints "Unable to retrieve the number of rooms."




    // MARK: - Guard let o Sentencia de salida rapida
        // Guarda let: permite detener la ejecucion del programa
        /*
            Con if let se ejecuta el bloque de codigo cuando una variable es distinta de nula. Pero con Guard let, se ejecuta el bloque de codigo cuando es nula la variable
         
            El guard let debe ir dentro de una funcion
        */
var myOptionalString4: String?

func myFunc() {

    guard let myString = myOptionalString4 else {
        // Si se cumple la condiion se detiene la ejecucion de la funcion
        print("myString es nulo")
        return
    }
        // Si el valor es diferente de nulo se ejecuta este bloque
        print("El valor de myString es \(myString)")
}

myFunc()

myOptionalString4 = "Hola mundo"

myFunc()

    // MARK: Ejemplo

func checkAge() {

  var age: Int? = 22

    guard let myAge = age else {
        print("Age is undefined")
        return
    }

    print("My age is \(myAge)")
}

checkAge()




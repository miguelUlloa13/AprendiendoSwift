import UIKit

//*************************************************************************

// Tuplas
//      Los arreglos solo aceptan un solo tipo de valor: int, float, String
//      Las tuplas es una coleccion de distion tipos de valores

var persona = ("Miguel", "Martinez", 23, 1.68)     // Declarar una tupla

        // Acceder a los datos de una tupla

persona.0

var (nombre, apellido, edad, estatura) = persona

nombre

var personaNamedTuples = (nombre2: "Angel", apellido2: "Ulloa", edad: 24, estatura: 1.70)
personaNamedTuples.nombre2

//*************************************************************************

// Enumeracion

        // Declarara una enumeracion

enum informacionPersonal{
    case nombre
    case apellido
    case direccion
    case numTel
}

enum informacionPersonal2{
    case nombre, apellido, direccion, numTel
}

var currenData: informacionPersonal = .nombre
var input = "Miguel"

currenData = informacionPersonal.numTel
currenData = .numTel
input = "666666666666"

        // Enumeraciones con valores asociados

enum complejaInformacionPersonal{
    case nombre (String)
    case apellido (String, String)
    case direccion (String, Int)
    case numTel (Int)
}

var ComplejaInformacionPersonal: complejaInformacionPersonal = .nombre("Miguel")
ComplejaInformacionPersonal = .direccion("Calle Glora", 26)

        // Enumeraciones con el mismo tipo de valor

enum rawinformacionPersonal: String {
    case nombre
    case apellido
    case direccion
    case numTel
}

rawinformacionPersonal.nombre.rawValue

enum rawinformacionPersonal2: Int {
    case nombre
    case apellido
    case direccion
    case numTel
}

rawinformacionPersonal2.nombre.rawValue     //Posicion 0

enum rawinformacionPersonal3: String {
    case nombre = "Name"
    case apellido = "Surname"
    case direccion = "Address"
    case numTel = "phone"
}

rawinformacionPersonal3.nombre.rawValue


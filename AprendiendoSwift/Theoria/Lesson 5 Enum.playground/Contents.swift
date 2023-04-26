import UIKit


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


enum CompassPoint {
    case north
    case south
    case east
    case west
}

var pointOne: CompassPoint = .north
var pointTwo = CompassPoint.north

switch pointTwo {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}




import UIKit

//*************************************************************************

// Switch

let country = "MX"

switch country {
    
case "ES":
    print("El idioma es espaniol")
    
case "MX":
    print("El idioma es espaniol")
    
case "PE":
    print("El idioma es espaniol")
    
case "CO":
    print("El idioma es espaniol")
    
case "ARG":
    print("El idioma es espaniol")
    
case "EEUU":
    print("El idioma es ingles")
    
default:
    print("No conocemos el idioma")
}

let age = 102

switch age {
    
case 0...2:
    print("Eres un bebe")
    
case 3...10:
    print("Eres un ninio")
    
case 11..<18:
    print("Eres un adolescente")
    
case 18..<70:
    print("Eres adulto")
    
case 70..<100:
    print("Hola abuelo")
    
default:
    print("😱")
    
}

        // Switch con enum

enum infoPersonal{
    
    case nombre
    case apellido
    case direccion
    case numTel
    
}

let datoUsuario: infoPersonal = .nombre

switch datoUsuario {
    
case .nombre:
    print("Estamos editando el nombre")
case .apellido:
    print("Estamos editando el apellido")
case .direccion:
    print("Estamos editando la direccion")
case .numTel:
    print("Estamos editando el numero telefonico")
    
}

//*************************************************************************

        // Ejemplo de enum y switch


let country2 = "MX"

enum paisesHablahispana {
    
    case MX, ESP, ARG, PER, PR, BV

}

switch country {
    
case "ES":
    print("El idioma es espaniol")
    
case "MX":
    print("El idioma es espaniol")
    
case "PE":
    print("El idioma es espaniol")
    
case "CO":
    print("El idioma es espaniol")
    
case "ARG":
    print("El idioma es espaniol")
    
case "EEUU":
    print("El idioma es ingles")
    
default:
    print("No conocemos el idioma")
}








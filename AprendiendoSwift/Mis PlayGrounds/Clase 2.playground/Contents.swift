import UIKit

//*************************************************************************

//Tipo de dato String

let myString = "Bienvenido a Swift"

let myMultipleString = """

Hey, esto es una prueba de

string en varias lineas

"""

let mistring = """
Esta es otra prueba de\
 strig pero en una sola linea
"""

let mistring2 = ""      //Cadena vacia


//*************************************************************************

//Tipo de dato caracter

let myCharacter: Character = "\u{E9}"

let myCharacter2 = "\u{24}"

// Caracteres especiales (\n, \r, \t, \0, \')
let myString3 = "Probando\ncaracteres\rde\tswift"

// Emojis
let myEmoji =  "😡" //Se puede poner un emoji con ascii code o con "ctrl + cmd + SPACE"

//*************************************************************************

// Concatenacion

var myString4 = "Bienvenido" + " al tema de concatenacion"
myString4 += "\nesto es muy divertido"

let name = "Miguel"
let country = "Mexico"
let old = "23 anios"

let myPersonalInfowithContatenation = "hola me llamo " + name + ", soy de " + country + "y tengo " + old

// Interpolacion (Es concatenar con otras variables o constantes

let myPersonalInfowithInterpolation  = "hola me llamo \(name) soy de \(country) y tengo \(old)"

//*************************************************************************

// Comparacion

let nombre1 = "Miguel"
let nombre2 = "Miguel"
let apellido = "Ulloa"

// Son iguales

nombre1 == nombre2

// No son iguales

nombre1 == apellido

let myContent = "Mi nombre es Miguel"
myContent.contains(nombre1)     // la func contains permite averiguar si una cadena esta dentro de otra cadena

// Comprobar cadena vacia

let cadenaVacia = ""
cadenaVacia == ""

cadenaVacia.isEmpty

// Recorrido
//      Se puede inspeccionar cada caracter con el for

for valor in myContent{
    
    print(valor)

}






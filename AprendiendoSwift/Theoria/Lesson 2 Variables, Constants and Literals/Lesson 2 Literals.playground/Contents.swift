import UIKit




    // MARK: - Literals -
        // Una literal es un valor constante formado por una secuencia de caracteres.

    // Constantes lógicas: true, false
        let isTrue = true

    // Constantes de tipo entero: Decimal (123, -23745), Hexadecimal (0x1fa), Octal (0125)
        let myInt = 24, myHex = 0x13, myOct = 0o13, myBin = 0b101

    // Constantes reales: Punto fijo (14.487, -.234), Exponencial (12.5e8, 1.2e-15)
        let myFloat = 3.1416

    // Constantes de tipo carácter: Rodeadas de comillas simples. Su valor se corresponde con su código ASCII. 'A', '\n'
        let myChar = "C"

    // Constantes de tipo cadena de caracteres: Se representan entre comillas. "Hola mundo\n"
        let hellowWorld = "Hello, world!"


    
    // MARK: - Type String -
        //Tipo de dato String
        // Cadena de caracteres
        // Un string es una coleccion caracteres.

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



    // MARK: - Type Character -
        //Tipo de dato caracter

let myCharacter: Character = "\u{E9}"

let myCharacter2 = "\u{24}"

// Caracteres especiales (\n, \r, \t, \0, \')
let myString3 = "Probando\ncaracteres\rde\tswift"

// Emojis
let myEmoji =  "😡" //Se puede poner un emoji con ascii code o con "ctrl + cmd + SPACE"


    // MARK: - Type Bool -
        //Valores booleanos y logicos

var cedulaProfesional = true
var salario = 0

if cedulaProfesional{
    salario = 9000
}else{
    salario = 8000
}

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






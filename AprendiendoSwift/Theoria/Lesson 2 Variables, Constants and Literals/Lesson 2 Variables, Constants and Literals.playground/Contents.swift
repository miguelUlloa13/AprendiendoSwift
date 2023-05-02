import UIKit

    // MARK: - Variables -

    // Las variables son espacios en memoria reservados para almacenar un valor que corresponde a un tipo de dato soportado por el lenguaje de programación. Los valores almacenados en las variables pueden cambiar durante la ejecución de nuestro Programa.
    // La palabra reservada "var" se usa para declarar variables

    // MARK: - Sintaxis
    /*
     var variableName = value
     */

var variable = "Hola mundo"     //Declarar una variable
variable = "Hola mundo2"        // Se modifico su valor

    // MARK: - Declaracion multiple de variables

var num1 = 1, miNombre = "Miguel"
var apellidoPaterno = "Martinez", apellidoMaterno = "Ulloa"


    // MARK: - Constantes -

    // Las Constantes se utilizarán para almacenar algun tipo de dato que permanecerá inmutable (no cambiará) a lo largo de la ejecución del programa.
    // La palabra reservada "let" se usa para declarar constantes.

    // MARK: - Sintaxis
    /*
     let constantName = value
     */

let constante = "Adios mundo"   //Crear una constante
//constante = "Adios mundo2"    //No se puede modificar una constante

    // MARK: - Declaracion multiple de constantes

let peso = 70, edad = 24
let num2 = 2, miApellido = "Martinez"



    // Las variables y constantes sirven para almacenar datos (guardar en memoria)
    // No se puede nombrar a una variable o constante empezando con un numero, ejemplo:
        // var 2b = "Hola"  // Invalido



    // MARK: - Explicit and implicit declaration -
        // Asignacion Explicita e Implicita

var a1:Int = 200     //Asignacion explicita de una variable tipo entero (de 64 bits)
var a2 = 200         //Asignacion IMPLICITA de una variable tipo entero

    // Una caracteristica de swift es que cuenta con inferencia de tipos, es decir, el compilador reconoce el tipo de dato si no se especifico

var b1: String = "Este es un mensaje"
var b2 = "Este es un mensaje"

let c1: Float = 3.1416
let c2 = 3.1416

var d2: Bool = false
var d1 = true



    // MARK: - Basic data types -
        // Tipos de datos basicos:

var x = 18      //Variable de tipo entero
var y = 9.5     //Varible de tipo flotante (NUmero decimal)
var mensaje = "Este es una variable String"     //Variable de tipo String
let booleano = true     //Varaible de tipo bool (true or false)



//Operadores Aritmeticos

var sumaEnteros = x + 2
var restaEnteros = y + 1.7

var sumar = Double(x) + Double(y)

var division = x / 3

var division2 = x / 5   //No se obtiene todo el resultado
//Para obtener el resultado en numero decimal es necesario especificar el tipo de dato

var division3 = Double(x) / 5











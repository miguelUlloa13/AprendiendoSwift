import UIKit

//*************************************************************************

// Funciones

        // Funciones sin parametros

            // Ejemplo de funcion "print"

print("Hola mundo")
        // Recibe parametros del tipo any (any es cualquier tipo de dato)
        // void: no retorno ningun valor
        // Se llama a la funcion por su nombre

    // Se crea nuestra funion usuario
func holaMundo(){
    
    print("Hola mundo2")
    
}

    // Llamada de la funcion
holaMundo()

        // Funcion para sumar 2 numeros

func sumarDosNumeros(){
    
    let numero = 2 + 2
    print("La suma de los dos numeros es: \(numero)")
    
}

sumarDosNumeros()

//*************************************************************************

    // Funiones de un solo parametro

func cuadradoDe(numero:Int){
    
    let numeroCuadrado = numero * numero
    print("El cuadrado del numero es: \(numeroCuadrado)")
    
}

cuadradoDe(numero: 10)


    // Funiones con multiples parametros y valor de retorno

        // Ejemplo de funcion con valor de retorno

func cuboDe(numero:Int) -> Int{
    
    let numeroCubo = numero * numero * numero
    
    return numeroCubo
    
}

let resultado = cuboDe(numero: 10)

print("El resultado del numero al cubo es: \(resultado)")

        // Ejemplo de funcion con multiples valores

func saludarAlumno(nombre:String, mensaje:String){
    
    print("Hola \(nombre) \(mensaje)")
    
}

saludarAlumno(nombre: "Miguel", mensaje: " te damos la bienvenida al curso de Swift")

//*************************************************************************

         // Valores por default

func saludarAlumno2(nombre:String, mensaje:String = " te damos la bienvenida al curso de Swift"){
    
    print("Hola \(nombre) \(mensaje)")
    
}

saludarAlumno3(nombre: "Angel")

        // Ejemplo de func con valores por defaultt pero sobrescribir un argumento

func saludarAlumno3(nombre:String, mensaje:String = " te damos la bienvenida al curso de Swift"){
    
    print("Hola \(nombre) \(mensaje)")
    
}

saludarAlumno3(nombre: "Miguel", mensaje: "Adios")

//*************************************************************************

        // Multiples valores de retorno en una funcion

func listaDeNombres () -> [String]{
    
    let arregloNombres = ["Miguel", "Mario", "Juan"]
    return arregloNombres
    
}

var nombre = listaDeNombres()
nombre

//*************************************************************************

        // Añadir nombres a parametros externos

            // Nombre de parametro externos e internos

func calificacionPromedio(matematicas materiaUno:Double, fisica materiaDos:Double, quimica materiaTres:Double) -> Double{
    
    return (materiaUno + materiaDos + materiaTres)/3
    
}

let promedio = calificacionPromedio(matematicas: 81, fisica: 45, quimica: 60)

print(promedio)


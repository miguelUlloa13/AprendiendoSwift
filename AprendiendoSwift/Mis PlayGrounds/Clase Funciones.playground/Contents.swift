import UIKit

    // MARK: - Funciones -

    // MARK: - Sintaxis:

/*
 
 func myFunc (parámetros-de-entrada) -> tipo_de_retorno {
 
    declaraciones...
 
 }
 
 */

    // MARK: - Funciones sin parametros

    // MARK: Ejemplo de funcion "print"

print("Hola mundo")
        // Recibe parametros del tipo any (any es cualquier tipo de dato)
        // void: no retorno ningun valor
        // Se llama a la funcion por su nombre

    // Se crea la funcion 
func holaMundo(){
    
    print("Hola mundo2")
    
}

    // Llamada de la funcion
holaMundo()

    // MARK: Ejemplo de funcion para sumar 2 numeros

func sumarDosNumeros(){
    
    let numero = 2 + 2
    print("La suma de los dos numeros es: \(numero)")
    
}

sumarDosNumeros()


    // MARK: - Funciones de un solo parametro

func cuadradoDe(numero:Int){
    
    let numeroCuadrado = numero * numero
    print("El cuadrado del numero es: \(numeroCuadrado)")
    
}

cuadradoDe(numero: 10)


    // MARK: - Funciones con multiples parametros y valor de retorno

    // MARK: Ejemplo de funcion con valor de retorno

func cuboDe(numero:Int) -> Int{
    
    let numeroCubo = numero * numero * numero
    
    return numeroCubo
    
}

let resultado = cuboDe(numero: 10)

print("El resultado del numero al cubo es: \(resultado)")

    
    // MARK: Ejemplo de funcion con retorno de tipo arreglo

func listaDeNombres () -> [String]{

    let arregloNombres = ["Miguel", "Mario", "Juan"]
    return arregloNombres

}

var nombre = listaDeNombres()
print(nombre)

    // MARK: Ejemplo de funcion con multiples valores de entrada

func saludarAlumno(nombre:String, mensaje:String){
    
    print("Hola \(nombre) \(mensaje)")
    
}

saludarAlumno(nombre: "Miguel", mensaje: " te damos la bienvenida al curso de Swift")


    // MARK: - Funciones con Valores por default

func saludarAlumno2(nombre:String, mensaje:String = "te damos la bienvenida al curso de Swift"){
    
    print("Hola \(nombre) \(mensaje)")
    
}

saludarAlumno2(nombre: "Angel")
saludarAlumno2(nombre: "Pablo")

    // MARK: - Ejemplo de fncon con valores por defaultt pero se sobrescribe un argumento


func saludarAlumno3(nombre:String, mensaje:String = " te damos la bienvenida al curso de Swift"){
    
    print("Hola \(nombre) \(mensaje)")
    
}

saludarAlumno3(nombre: "Miguel", mensaje: "Adios")
saludarAlumno3(nombre: "Pablo", mensaje: "Sayonara")



    // MARK: - Funciones con multiples valores de retorno

    // MARK: - Ejemplo 1
func SumaYResta(numeroA:Int, numeroB:Int) -> (Int, Int) {
    return (numeroA + numeroB, numeroA - numeroB)
}

print(SumaYResta(numeroA: 7, numeroB: 3))

    // MARK: - Ejemplo 2
func mayorMenor(v1:Int, v2:Int) -> (Int, Int) {
    if v1 > v2 {
            // Si el numero "v1" es mayor
        return (v1, v2)
    } else {
            // Si el numero "v2" es mayor
        return (v2, v1)
    }
}

print(mayorMenor(v1: 1, v2: 3))



    // MARK: - Añadir nombres a parametros externos

            // Nombre de parametro externos e internos

func calificacionPromedio(matematicas materiaUno:Double, fisica materiaDos:Double, quimica materiaTres:Double) -> Double{
    
    return (materiaUno + materiaDos + materiaTres)/3
    
}

let promedio = calificacionPromedio(matematicas: 81, fisica: 45, quimica: 60)

print(promedio)


    // MARK: - Omitir nombre de parametros

    // En Swift, el operador guion bajo (_) representa un parámetro/etiqueta sin nombre.

func divmod(_ a: Int, _ b:Int) -> (Int, Int) {
    return (a / b, a % b)
}

print(divmod(7, 3))
print(divmod(5, 2))
print(divmod(12,4))

print(type(of: divmod(9, 9)))


    // MARK: - Funciones anidadas

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    
    var runningTotal = 0
    
    func incrementer() -> Int {
        
        runningTotal += amount
        
        return runningTotal
        
    } // incrementer
    
    return incrementer
    
} // makeIncrementer

let incrementByTen = makeIncrementer(forIncrement: 10)

print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

let alsoIncrementByTen = incrementByTen

print(alsoIncrementByTen())
print(alsoIncrementByTen())
print(incrementByTen())

    // Ambas constantes (incrementByTen, alsoIncrementByTen) son referencias a una misma posición de memoria, donde se encuentra la funcion anidada junto a la variable capturada runningTotal.

    // Por este motivo, cuando ejecutámos alsoIncrementByTen estamos actuando sobre la misma variable runningTotal, básicamente porque ejecutando el código asoiado al segmento de memoria inicializado por incrementByTen y ahora referenciado también por alsoIncrementByTen.

    // En dado caso que solo se quiera usar el valor por copia se haria lo siguiente

let incrementByTwelve = makeIncrementer(forIncrement: 20)

print(incrementByTwelve())
print(incrementByTwelve())
print(incrementByTwelve())

let alsoIncrementByTwelve = makeIncrementer(forIncrement: 20)

print(alsoIncrementByTwelve())
print(alsoIncrementByTwelve())
print(incrementByTwelve())

import UIKit

//********************************************************************************
//Valores booleanos y logicos

var cedulaProfesional = true
var salario = 0

if cedulaProfesional{
    salario = 9000
}else{
    salario = 8000
}

//********************************************************************************

// Colecciones

    // Arreglos (Array)

var arregloNumeros = [1,2,3]
let arregloNumerosInmutable = [1,2,3]

print(arregloNumeros)

print(arregloNumeros[2])    //Los arreglos empizan desde la posicion 0

print(arregloNumerosInmutable[1])

        // Agregar valores

arregloNumeros.append(5)    //Metodo append sirve para agregar elemeto al final del arreglo
print(arregloNumeros)

arregloNumeros.insert(4, at: 3)     //inser es para agregar elementos en cierta posiion del arreglo
print(arregloNumeros)

        // Eliminar valores

arregloNumeros.removeLast()     // Eliminar el ultimo elemento del arreglo
print(arregloNumeros)

arregloNumeros.remove(at: 3)
print(arregloNumeros)

arregloNumeros.removeAll()      // Eliminar todos los elementos
print(arregloNumeros)

var arregloVacio: [Int] = []    // Arreglo vacio de enteros
print(arregloNumeros)

    // Diccionario

let myClassicDictionary = Dictionary<Int, String>()     // Primera forma de declarar un diccionario
var myModernDictionary = [Int:String]()

        // Agregar datos

myModernDictionary = [001:"Miguel", 002:"Angel"]    // Inicializar el diccionario

        // Agregar otro datos

myModernDictionary[003] = "Martinez"
myModernDictionary[004] = "Ulloa"

        // Acceso a un dato
myModernDictionary[002]
myModernDictionary[002] = "Reemplazado"     // Reemplzar un dato del diccionario
myModernDictionary.updateValue("Reemplazado2", forKey: 002)
myModernDictionary[002]

        // Borrar dato
myModernDictionary[002] = nil
myModernDictionary[002]

myModernDictionary[002] = "Reemplazado"
myModernDictionary.removeValue(forKey: 002)
myModernDictionary[002] = nil


import UIKit

// MARK: - Tuples
    // Tuplas
    // Una tupla es un grupo de diferentes valores. Y, cada valor dentro de una tupla puede ser de diferentes tipos de datos.
    // Las tuplas es una coleccion de distion tipos de valores.
    // Como un array, cada elemento de una tupla está representado por números de índice (0, 1, ...) donde el primer elemento está en el índice 0; coleccion tipo ordenada

var persona = ("Miguel", "Martinez", 23, 1.68)     // Declarar una tupla

// Acceder a los datos de una tupla

persona.0

var (nombre, apellido, edad, estatura) = persona

nombre

// Named tuples
var personaNamedTuples = (nombre2: "Angel", apellido2: "Ulloa", edad: 24, estatura: 1.70)
personaNamedTuples.nombre2


typealias ConferencePropertiesTuple = (pavilionName: String, auditoryName: String, letterPavilion: String)
// Arreglo de pabellones
var auditoryAndPavilionsValues: [ConferencePropertiesTuple] = [
    ("Pabellon A", "Auditorio Alfa", "A"),
    ("Pabellon B", "Auditorio Bravo", "B"),
    ("Pabellon C", "Auditorio Charlie", "C"),
    ("Pabellon D", "Auditorio Delta", "D"),
    ("Pabellon E", "Auditorio Eco", "E"),
    ("Pabellon F", "Auditorio Foxtrot", "F")
]

// Iterando en una tupla

for (pavilion, auditory, letter) in auditoryAndPavilionsValues {
    
    print("\(pavilion) -> \(auditory) -> \(letter)")
    
}

auditoryAndPavilionsValues[5].auditoryName



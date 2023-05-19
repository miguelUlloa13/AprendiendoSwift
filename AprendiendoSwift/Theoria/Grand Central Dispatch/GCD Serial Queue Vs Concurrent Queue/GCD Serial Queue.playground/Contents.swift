import UIKit

// MARK: - Serial Queue -
// Cola en serie
// Una cola en serie realiza solo una tarea a la vez. Las colas en serie se utilizan a menudo para sincronizar el acceso a un valor o recurso específico para evitar que se produzcan data race.
// Un data race puede ocurrir cuando varios threads acceden a la misma memoria sin sincronización y al menos un acceso es de escritura. Por ejemplo, se podría estar leyendo valores de un Array del Main Thread mientras que un thread de fondo agrega nuevos valores a esa misma matriz.

let serialQueue = DispatchQueue.init(label: "serial.queue")

serialQueue.async {
    print("Started task 1...")
    print("Finished task 1...")
}

serialQueue.async {
    print("Started task 2...")
    sleep(2)
    print("Finished task 2...")
}

serialQueue.async {
    print("Started task 3...")
    sleep(3)
    print("Finished task 3...")
}

// Output
/*
    Started task 1
    Finished task 1
 
    Started task 2
    Retardo de 2 segs
    Finished task 2
     
    Started task 3
    Retardo de 3 segs
    Finished task 3
 
 */

// Hasta que no acaba la tarea 1 no empieza la tarea 2. Y hasta que no acaba la tarea 2 no empieza la 3.

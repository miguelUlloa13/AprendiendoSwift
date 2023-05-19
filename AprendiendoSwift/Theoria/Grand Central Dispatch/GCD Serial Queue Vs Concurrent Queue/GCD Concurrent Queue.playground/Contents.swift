import UIKit

// MARK: - Concurrent Queue -
// Cola concurrente
// Una cola concurrente nos permite ejecutar múltiples tareas al mismo tiempo. Las tareas siempre comenzarán en el orden en que se agregan, pero pueden terminar en un orden diferente ya que se pueden ejecutar en paralelo. Las tareas se ejecutarán en threads distintos que son administrados por el dispatch queue. El número de tareas que se ejecutan al mismo tiempo es variable y depende de las condiciones del sistema.

let concurrentQueue = DispatchQueue.init(label: "concurrent.queue", attributes: .concurrent)

concurrentQueue.async {
    print("Started task 1...")
    sleep(5)
    print("Finished task 1...")
}

concurrentQueue.async {
    print("Started task 2...")
    sleep(3)
    print("Finished task 2...")
}

concurrentQueue.async {
    print("Started task 3...")
    sleep(2)
    print("Finished task 3...")
}

// Output
/*
    Started task 1  // Inicia su retardo de 5 segs
    Started task 2  // Inicia su retardo de 3 segs
    Started task 3  // Inicia su retardo de 2 segs
 
    Finished task 3 // Termino su retardo de 2 segs
    Finished task 2 // Termino su retardo de 3 segs
    Finished task 1 // Termino su retardo de 5 segs
 */

// En este caso empiezan las 3 tareas a la vez.


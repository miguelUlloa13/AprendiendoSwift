import UIKit

// Concurrent Queues
    // Cola concurrente
    // Una cola concurrente nos permite ejecutar múltiples tareas al mismo tiempo. Las tareas siempre comenzarán en el orden en que se agregan, pero pueden terminar en un orden diferente ya que se pueden ejecutar en paralelo. Las tareas se ejecutarán en subprocesos distintos que son administrados por el dispatch queue. El número de tareas que se ejecutan al mismo tiempo es variable y depende de las condiciones del sistema.

let concurrentQueue = DispatchQueue.init(label: "miguelulloa.concurrent.queue", attributes: .concurrent)

concurrentQueue.async {
    print("Started Asynchronou task 1...")
    sleep(3)
    print("Finished Asynchronou task 1...")
}

concurrentQueue.async {
    print("Started Asynchronou task 2...")
    sleep(1)
    print("Finished Asynchronou task 2...")
}

concurrentQueue.async {
    print("Started Asynchronou task 3...")
    sleep(2)
    print("Finished Asynchronou task 3...")
}

// En este caso todas las tareas no necesitan que la anterior haya terminado,

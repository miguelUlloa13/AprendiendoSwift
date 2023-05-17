import UIKit

// Synchronous Queues/Serial Queues
    // Cola en serie
    // Una cola en serie realiza solo una tarea a la vez. Las colas en serie se utilizan a menudo para sincronizar el acceso a un valor o recurso específico para evitar que se produzcan data race.

    // Un data race puede ocurrir cuando varios subprocesos acceden a la misma memoria sin sincronización y al menos un acceso es de escritura. Por ejemplo, se podría estar leyendo valores de una matriz del subproceso principal mientras que un subproceso de fondo agrega nuevos valores a esa misma matriz.
    // Las data races pueden ser la causa raíz de las pruebas irregulares y los bloqueos extraños.
/*
let serialQueue = DispatchQueue.init(label: "miguelulloa.serial.queue")

serialQueue.sync {
    print("Started task 1...")
    print("Finished task 1...")
}

serialQueue.sync {
    print("Started task 2...")
    print("Finished task 2...")
}

serialQueue.async {
    // Si se omite el parametro "attributes" en init, el dispatch queue se ejecutara de forma sincrona, es decir, el metodo async funciona igual que sync
    print("Started task 3...")
    print("Finished task 3...")
}

serialQueue.sync {
    print("Started task 4...")
    print("Finished task 4...")
}

// Hasta que no acaba la tarea actual, no empieza la tarea siguiente.
*/

final class Messenger {

    private var messages: [String] = []

    private var queue = DispatchQueue(label: "messages.queue", attributes: .concurrent)

    var lastMessage: String? {
        return queue.sync {
            messages.last
        }
    }

    func postMessage(_ newMessage: String) {
        queue.sync(flags: .barrier) {
            messages.append(newMessage)
        }
    }
}

let messenger = Messenger()
// Executed on Thread #1
messenger.postMessage("Hello SwiftLee!")
// Executed on Thread #2
print(messenger.lastMessage) // Prints: Hello SwiftLee!

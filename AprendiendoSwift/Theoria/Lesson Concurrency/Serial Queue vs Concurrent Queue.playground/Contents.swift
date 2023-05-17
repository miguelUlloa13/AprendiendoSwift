import UIKit

// Serial Queue vs Concurrent Queue
// • Serie: Una tarea a la vez.
// • Concurrent: Múltiples tareas a la vez
// • Incluso para las tareas concurrentes, se quitarán de la cola en serie. En un orden fijo, es decir, FIFO.

// • Serial/Concurrente: afecta a la queue de destino a la que está despachando.
// • Sync/Async afecta el threat actual desde el que está despachando.


// DispatchQueue.main: es una serial queue (cola en serie)

var counter = 1

// MARK: - Bloque 1
// Bloque de codigo para ser ejecutado de manera asincrona en cola en serie
DispatchQueue.main.async {
    // No se bloquea la ejecucion actual, este bloque se ejecuta por separado
    for i in 0...3{
        counter = i
        print("\(counter)")
    }
}

// MARK: - Bloque 2
// Este bloque no esta asociado a ningun dispatch queue o sync o async bloque, asi que ejecuta directamente
for i in 4...6 {
    counter = i
    print("\(counter)")
}

// MARK: - Bloque 3
// De igual manera, este bloque es asincrono en una cola en serie
DispatchQueue.main.async {
    counter = 9
    print (counter)
}

// Output
/*
     4
     5
     6
     0
     1
     2
     3
     9
 */

// El bloque 2 se ejecuta primero porque no esta asociado a ningun dispatch queue o ,sync o async
// El bloque 1 se envia al serial queue (DispatchQueue.main), despuues tambien se envia el bloque 3. Debido que es una cola en serie de orden FIFO, el primer bloque en ejecutarse es el bloque 1 y despues el bloque 3

import UIKit

// GCD
// A DispatchQueue is an abstraction layer on top of the GCD queue that allows you to perform tasks asynchronously and concurrently in your application. Tasks are always executed in the order they’re added to the queue.
// Every iOS application has a main thread, which is there to display your user interface and listen for events.
// Complex computations may slow down the main thread and freeze the app. Here is where multithreading comes into play. We must move all the heavy lifting to a background thread, and then move the result back to the main.
// The API responsible for managing your queues.

// MARK: - Concurency -
// El hecho de dos o más eventos o circunstancias estan ocurriendo o existiendo en el mismo tiempo. En programación, la concurrencia es la ejecución de múltiples secuencias de instrucciones en el mismo tiempo. Se habla de concurrencia cuando multiples secuencias de instrucciones (conjunto ordenado de instrucciones o tareas) estan siendo ejecutadas al mismo tiempo.

// MARK: - Paralelism -
// Es el estado de ser paralelo o de corresponder de alguna manera. Es el uso de múltiples elementos de procesamiento simultáneamente para resolver algún problema. Los problemas se dividen en instrucciones y se resuelven simultáneamente, ya que cada recurso que se ha aplicado al trabajo funciona al mismo tiempo.

// MARK: - Paralelism Vs Concurrency
// La diferencia entre Paralelism y Concurency radica en que en el paralelismo se ejecuta múltiples tareas de forma simultánea, y por otra parte, la concurrencia computacional ejecuta y gestiona diversas tareas al mismo tiempo.

// MARK: Como se logra la concurrencia?
// Context switching: Es cambiar de contexto. Los cambios de contexto son la acción de almacenar y restaurar los registros de la CPU de un proceso o tarea con objeto de poder continuar su ejecución  en otro momento mientras se asegura de que las tareas no entren en conflicto.
// Time slicing: consistente en la asignación de procesador por un cierto periodo de tiempo a cada proceso en el sistema, para empezar o proseguir su ejecución. Al terminar el tiempo asignado se retira el procesador, pasando a atender a otro proceso.

// En dispositivos iOS, la concurrencia se logra con el Multithreading. Multithreading permite divididir los procesos (conjunto de instrucciones a ejecutar) en subprocesos o threads. De esta manera los threads permiten la ejecucion concurrente de diferentes funciones dentro del proceso y, así, pueden realizar multiples tareas al mismo tiempo.
// La APIS disponibles en iOS para realizar Multithreading son:
    // MARK: - • Achieving multithreading by creating threads manually
        // Crear threads (hilos) manualmente y ejecutarlos simultaneamente. Permite mayor control y personalizacion en cada thread (iniciar, detener, retardar, etc.). NO RECOMENDABLE PORQUE ES MAYOR RESPONSABILIDAD Y SE CONSIDERA MALA PRACTICA. Agunos contras de crear threads manualmente:
                // • Responsabilidad de administrar los hilos con las condiciones del sistema.
                // • Desasignación una vez que hayan terminado de ejecutarse
                // • El Auto release pool no administrará los hilos creados por nosotros.
                // • Mantener el orden de ejecución.

    // MARK: - • Grand Central Dispatch GCD
        // Framework que ejecute código simultáneamente en hardware multicore enviando trabajo a dispatch queues administradas por el sistema. Basicamente, GCD es una API basada en colas que permite ejecutar closures en workers pools (patron que recibe un flujo de tareas para procesar en una cola.) en el orden FIFO (Primero en entrar, Primero en salir). Es la forma mas comun para realizar concurrencia en iOS, porque GCD se encarga de decidir cual thread a ejecutar, no el desarrollador.
        // Un dispatch queue ejecuta tareas en serie o concurrentemente, pero siempre en orden FIFO.
                
    // MARK: - • Operation Queues
    // MARK: - • Modern Concurrency in Swift


// Synchronous vs Asynchronous
// Synchronous: Bloquea la ejecución hasta que se complete esta tarea. Se bloquea la ejecucion hasta que el thread actual que se envio al dispatch queue se completa
// Asynchronous: Continúa la ejecución de la tarea actual, mientras que la nueva tarea se ejecutará de forma asíncrona. El control regresa del método inmediatamente y comienza a ejecutar otra tarea. No se bloquea la ejecucion.

// Serial Queue vs Concurrent Queue
// • Serie: Una tarea a la vez.
// • Concurrent: Múltiples tareas a la vez
// • Incluso para las tareas concurrentes, se quitarán de la cola en serie. En un orden fijo, es decir, FIFO.

// • Serial/Concurrente: afecta a la queue de destino a la que está despachando.
// • Sync/Async afecta el threat actual desde el que está despachando.


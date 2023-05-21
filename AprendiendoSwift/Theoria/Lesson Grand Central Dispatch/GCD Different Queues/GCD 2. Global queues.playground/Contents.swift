import UIKit

//• MARK: - 2. Global queues:
    // Son colas que se comparten por todo el sistema. Tenemos distintas prioridades high, default, low y brackground. Cuando enviamos tareas a las global queues especificamos un Quality of Service (QoS), que determina esas prioridades que acabamos de mencionar: userInteractive, userInitiated, utility y background.

 // MARK: userInteractive
    // Se ejecuta en el main thread (hilo principal). Lo usamos para hacer updates en la UI o para ejecutar lógicas que no sean muy costosas.
// MARK: userInitiated
    // El user ha invocado una operación desde UI y debe resolverse de forma asíncrona. La prioridad es High.
// MARK: utility
    // Para tareas asíncroncas que necesitan tiempo para finalizar, por ejemplo las típicas al user le ponemos un spinner. La prioridad es Low.
 // MARK: background
    // Son tareas que se ejecutan y el user no es consciente (no requiere interacción del usuario) como por ejemplo prefetching, mantenimiento y otras tareas en las que el tiempo no es importante. La prioridad es la más baja de todas.


    // MARK: Ejemplo
        
         
// La prioridad más baja
DispatchQueue.global(qos: .background).async {
    print("Background")
}

// Prioridad por defecto
DispatchQueue.global(qos: .userInteractive).async {
    print("UserInteractive")
}

// La prioridad más alta
DispatchQueue.global(qos: .userInitiated).async {
    print("UserInitiated")
}

// Prioridad baja
DispatchQueue.global(qos: .utility).async {
    print("Utility")
}
         
         

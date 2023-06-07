import UIKit

// MARK: - Different Queues -
// Tipos de colas
// GCD nos ofrece 3 tipos de colas:

// • MARK: - 1. Main queue:
    //Es el thread principal de la app, podemos acceder a él desde cualquier punto de la app porque es accesible globalmente. DispatchQueue.main: por defecto es una serial queue (cola en serie) de orden FIFO. Se usa para actualizar la UI (interfaz de usuario) después de completar el trabajo en una Task en una concurrent queue.

    // MARK: Ejemplo
         
DispatchQueue.main.async {
    print("Reload collectionView")
}








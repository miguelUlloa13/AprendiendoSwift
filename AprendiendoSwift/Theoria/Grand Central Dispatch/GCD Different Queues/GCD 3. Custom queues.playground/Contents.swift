import UIKit

//• MARK: - 3. Custom queues:
    // Son colas que creamos nosotros (pueden ser en serie o concurrentes). Su uso es para realizar trabajos non-UI (que no son de interfaz de usuario) en segundo plano.

    // MARK: Ejemplo
let concurrentQueue = DispatchQueue(label: "swiftbeta.concurrent.queue", attributes: .concurrent)

concurrentQueue.async {
    print("Started task 1...")
    print("Finished task 1...")
}
         
        

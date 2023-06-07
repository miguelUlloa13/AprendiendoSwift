import UIKit

// MARK: - DELAY -
// Uno de los métodos que tenemos con DispatchQueue es el de poder retrasar la ejecución de una tarea. Es tan simple como usar el método asyncAfter y especificar el tiempo en segundos, vamos a ver un ejemplo:

DispatchQueue.main.async {
    print("Message")
}

DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
    print("Message printed after 2 seconds")
}

DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
    print("Message printed after 4 seconds")
}

/* El resultado es
Message
Message printed after 2 seconds
Message printed after 4 seconds
*/

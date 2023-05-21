import UIKit

// MARK: - Asynchronous
    // Continúa la ejecución de la tarea actual, mientras que la nueva tarea se ejecutará de forma asíncrona. El control regresa del método inmediatamente y comienza a ejecutar otra tarea. No se bloquea la ejecucion. Ejecuta de forma asíncrona con el método async, la llamada al método vuelve inmediatamente.

// Usa async para ejecutar ese bloque de código de forma asíncrona
DispatchQueue.global(qos: .default).async {
    // Do something
}

func asyncWork(){
    let teamOne = DispatchQueue(label: "teamOne")
    let teamTwo = DispatchQueue(label: "teamTwo")
    
    teamOne.async {
        for task in 1...3{ print("Task \(task)") }
    }
    teamTwo.async {
        for task in 1...3{ print("Task \(task)") }
    }
}

//Call Async Task
asyncWork()

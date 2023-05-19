import UIKit

// MARK: - Synchronous vs Asynchronous -
    // MARK: - Synchronous
        // Bloquea la ejecución hasta que se complete esta tarea. Se bloquea la ejecucion hasta que el thread actual que se envio al dispatch queue se completa. Cuando un work item se ejecuta sincrónicamente con el método de sync, el programa espera hasta que finaliza la ejecución antes de que regrese la llamada al método.

    // MARK: - Ejemplo
// Usa sync para ejecutar ese bloque de código de forma síncrona
DispatchQueue.global(qos: .default).sync {
    // Do something
}

    // MARK: - Ejemplo 2

func syncWork(){
    let teamOne = DispatchQueue(label: "teamOne")
    let teamTwo = DispatchQueue(label: "teamTwo")
    
    teamOne.sync {
        for task in 1...3{ print("Task \(task)")}
    }
    print("Hello")
    teamTwo.sync {
        for task in 4...6{ print("Task \(task)") }
    }
}

//Call Func here
syncWork()

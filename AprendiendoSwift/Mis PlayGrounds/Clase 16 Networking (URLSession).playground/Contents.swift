import UIKit

    // Clase URLSession
        // Clase para realizar metodos Http

class myModel {
    
    func executeApi() {
        // Se le asigna el singleton de URLSession a la constante urlSession
        let urlSession = URLSession.shared
        
        let url = URL(string: "https://itunes.apple.com/search/media=music&entity=song&term=avicii")
        
        urlSession.dataTask(with: url!) { data, response, error in 
            
            // .dataTask Crea una tarea que recupera el contenido de una URL en función del objeto de solicitud de URL especificado y llama a un controlador al finalizar.
        }
        
    }
    
}

// Decodable

/*
 
 Decodable en Swift se usa para parsear (parsing) el JSON recibido de backend a objetos de tu dominio.
 
Parsin es el proceso de convertir algún tipo de datos en otro tipo de datos.
 
 */





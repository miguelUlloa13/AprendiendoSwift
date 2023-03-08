import UIKit

    // Clase URLSession
        // Clase para realizar metodos Http

class myModel {
    
    func executeApi() {

        let urlSession = URLSession.shared
        // Se le asigna el singleton de URLSession a la constante urlSession
            // El Singleton es un patrón de creación. Con él nos aseguramos que durante la ejecución de la aplicación solo se instancia una vez una clase y que se puede acceder desde cualquier punto.
        
        let url = URL(string: "https://itunes.apple.com/search/media=music&entity=song&term=avicii")
        
        urlSession.dataTask(with: url!) { data, response, error in 
            
            // .dataTask Crea una tarea que recupera el contenido de una URL en función del objeto de solicitud de URL especificado y llama a un controlador al finalizar. Esta función contiene un trailing closure con los siguientes parametros opcionales:
                
        // print("ℹ️ Data \(String(describing: data))")
                // data: Son los datos que devuelve el servidor. Por ejemplo un Json
        
        // print("ℹ️ Response \(String(describing: response))")
                // response: Proporciona metadatos de respuesta, como encabezados HTTP y código de estado. Si realiza una solicitud HTTP o HTTPS, el objeto devuelto es en realidad un objeto HTTPURLResponse.
         
        // print("ℹ️ Error \(String(describing: error))")
                // error: Indica por qué falló la solicitud, o nil si la solicitud fue exitosa.
            
        if let myData = data {
                // Se usa el enlace opcional (optional binding o if let) para extraer la informacion de forma segura
            
            let json = try? JSONSerialization.jsonObject(with: myData)
                // JSONSerialization.jsonObject sirve para parsear los datos
            
            print("ℹ️ Json \(String(describing: json))")
        }
            
        }.resume()
        
    }
    
}

let MyModel: myModel = myModel()

MyModel.executeApi()

// Decodable

/*
 
 Decodable en Swift se usa para parsear (parsing) el JSON recibido de backend a objetos de tu dominio.
 
Parsin es el proceso de convertir algún tipo de datos en otro tipo de datos.
 
 */





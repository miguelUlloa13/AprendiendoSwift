import UIKit

    // MARK: - Clase URLSession
        // Clase para realizar metodos Http

class myModel {
    
    func executeApi() {

        let urlSession = URLSession.shared
        // Se le asigna el singleton de URLSession a la constante urlSession
            // El Singleton es un patrón de creación. Con él nos aseguramos que durante la ejecución de la aplicación solo se instancia una vez una clase y que se puede acceder desde cualquier punto.
        
        let url = URL(string: "https://itunes.apple.com/search/media=music&entity=song&term=avicii")
        
        urlSession.dataTask(with: url!) { data, response, error in 
            
            // .dataTask Crea una tarea que recupera el contenido de una URL en función del objeto de solicitud de URL especificado y llama a un controlador al finalizar. Esta función contiene un trailing closure (completion handler) con los siguientes parametros opcionales:
                
        // print("ℹ️ Data \(String(describing: data))")
                // data: Son los datos que devuelve el servidor. Por ejemplo un Json
        
        // print("ℹ️ Response \(String(describing: response))")
                // response: Proporciona metadatos de respuesta, como encabezados HTTP y código de estado. Si realiza una solicitud HTTP o HTTPS, el objeto devuelto es en realidad un objeto HTTPURLResponse.
         
        // print("ℹ️ Error \(String(describing: error))")
                // error: Indica por qué falló la solicitud, o nil si la solicitud fue exitosa.
            
        if let myData = data {
                // Se usa el enlace opcional (optional binding o if let) para extraer la informacion de forma segura
            
            let json = try? JSONSerialization.jsonObject(with: myData)
                // JSONSerialization.jsonObject sirve para parsear  JSON en objetos Foundation y convertir objetos Foundation en JSON.
            
            // print("ℹ️ Json \(String(describing: json))")
        }
            
        }.resume()
        
    }
    
}

let MyModel: myModel = myModel()

MyModel.executeApi()


    // MARK: - Decodable

/*
 
Decodable en Swift se usa para parsear (parsing) el JSON recibido de backend a objetos de nuestro dominio (El modelo struct).
    El objeto es capaz de decodificar la respuesta en diferentes parametros entendibles por swift
 
Parsing o parsear es el proceso de convertir algún tipo de datos en otro tipo de datos.
 
 */

    // 1. Tener el JSON
        // Ejemplo de JSON
let data = """
{
    "name": "Miguel",
    "age": 24,
    "year_birth": 1999,
    "country": "Mexico"
}
""".data(using: .utf8)!


    // 2. Modelo de tipo User que conforma el protocolo Decodable
        // Mapeo de la respuesta
        // *NOTA: CON EL STRUCT SE DESCOMPONE LA RESPUESTA DEL SERVIDOR EN OBJETOS
struct User: Decodable {
    let name: String
    let age: Int
    let year_birth: Int
    let country: String
}

    // Si nuestro modelo de dominio (struct) es simple no necesitamos crear el init con el Decoder (Swift lo genera por nosotros)


    // 3. Parsear el JSON a un modelo de nuestro dominio
let myDecoder: JSONDecoder = JSONDecoder()  // Instancia
        // JSONDecoder decodifica instancias de un tipo de datos de objetos JSON.
let user = try? myDecoder.decode(User.self, from: data)

user?.name


    // Ejemplo

let data2 = """
{
   "code":200,
   "meta":null,
   "dataUser":{
      "id":2000,
      "user_id":4126,
      "title":"Thymbra caries votum ducimus velum corrumpo defessus tricesimus denuncio.",
      "due_on":"2023-01-01T00:00:00.000+05:30",
      "status":"completed"
   }
}
""".data(using: .utf8)!

struct UserResponse: Decodable {
    
    let code: Int?
    let meta: Meta?
    let dataUser: DataUser?
    
}

struct Meta: Decodable {

    
}

struct DataUser: Decodable {
    let id: Int?
    let user_id: Int?
    let title: String?
    let dueOn: Date?
    let status: String?
    
}

let user2 = try? myDecoder.decode(UserResponse.self, from: data2)

user2?.dataUser?.id
user2?.code



    // Ejemplo

    // NOTA: la propiedad del modelo se debe llamar igual a la key del JSON, sino no se puede parsear. A menos que se usa el "Coding Keys".

let data3 = """
{
    "name_of_user": "Miguel",
    "age_of_user": 24
}
""".data(using: .utf8)!

struct MyUser: Decodable {
    let name: String
    let age: Int
    
        // Se mapea el JSON a nuestro modelo sin tener el mismo nombre en la propiedad. A la propiedad se le asigna la key que se recibe del JSON
    
}

let user3 = try? myDecoder.decode(MyUser.self, from: data3)

user3?.name    // Valor nill porque es diferente el nombre de la propiedad
user3?.age





    // MARK: - CodingKeys
        // Mapeo con Enum y el protocolo Coding Key
        // La mayoría de veces cuando llamamos a un endpoint la key del JSON no coincide con el nombre de la propiedad de nuestro objeto de dominio. Al implementar CodingKeys hacemos ese mapeo del JSON al nombre de la propiedad.
        


let data4 = """
    {
        "name_of_user": "Miguel",
        "age_of_user": 24
    }
    """.data(using: .utf8)!


struct MyAnotherUser: Decodable {

    let name: String
    let age: Int

    enum CodingKeys: String, CodingKey {
        case name = "name_of_user"
        case age = "age_of_user"
    }

    // Se mapea el JSON a nuestro modelo sin tener el mismo nombre en la propiedad. A la propiedad se le asigna la key que se recibe del JSON

}


let myAnotherUser = try? JSONDecoder().decode(MyAnotherUser.self, from: data4)

myAnotherUser?.name
myAnotherUser?.age


    // MARK: - Inicializando de forma manual el Decodable
        // 

let data5 = """
    {
        "name_of_user": "Miguel",
        "age_of_user": 24
    }
    """.data(using: .utf8)!


struct MyAnotherUser2: Decodable {

    let name: String
    let age: Int

    enum CodingKeys: String, CodingKey {
        case name = "name_of_user"
        case age = "age_of_user"
    }

}

extension MyAnotherUser2 {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.age = try container.decode(Int.self, forKey: .age)
    }
    
    // Dentro del método init, le decimos al decodificador que tendremos un container con las CodingKeys que hemos especificado en el enum. Y luego, accedemos al container para sacar cada valor y asignarselo a la propiedades de nuestra instancia.
    // A la propiedad del modelo "name" se le asigna "name" del enum
    
}

let myAnotherUser2 = try? JSONDecoder().decode(MyAnotherUser2.self, from: data5)

myAnotherUser2?.name
myAnotherUser2?.age



    // MARK: - Decodidificar un array

let data6 = """
[{
    "name": "Miguel",
    "grade": 10
  },
  {
    "name": "Pablo",
    "grade": 6
  },
    {
    "name": "Juan",
    "grade": 5
  },
  {
    "name": "Saul",
    "grade": 0
  }
]
""".data(using: .utf8)!

struct Student: Codable {
    let name: String
    let grade: Int
}

let students = try JSONDecoder().decode([Student].self, from: data6)
    // La clave de todo está en esta línea, donde especificamos que esperamos un array de Student:

students.forEach { student in
    print("Student's name: \(student.name)")
}



    // MARK: - Manejo de errores con decodeIfPresent

let data7 = """
    {
        "name": "Miguel",
        "job": 24
    }
    """.data(using: .utf8)!

struct Worker: Codable {
    let name: String
    let job: Int
}

let worker = try JSONDecoder().decode([Worker].self, from: data7)
worker.name

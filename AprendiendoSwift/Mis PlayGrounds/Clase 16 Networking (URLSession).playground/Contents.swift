import UIKit

    // MARK: - Clase URLSession
        // Clase para realizar metodos Http

        // Realizando un GET (Recibir datos)
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
        // Cuando se crea una session o task inicialmente esta en un estado suspendido (No se realiza el request), es por ello que se debe agregar manualmente la funcion .resume() para realizar el request
        
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

struct Student: Decodable {
    let name: String
    let grade: Int
}

let students = try JSONDecoder().decode([Student].self, from: data6)
    // La clave de todo está en esta línea, donde especificamos que esperamos un array de Student:

students.forEach { student in
    print("Student's name: \(student.name)")
}



    // MARK: - decodeIfPresent
        

let data7 = """
    {
        "name": "Miguel",
        "job": "Programmer",
        "age": null
    }
    """.data(using: .utf8)!

struct Worker: Decodable {
    let name: String
    let job: String
    let age: Int?
}

let workers = try JSONDecoder().decode(Worker.self, from: data7)
workers.name
workers.age     // La aplicación sufre un crash porque desde backend no se envia la key "age" o se envia con valor nulo. Para evitar ello se coloca como opcional la propiendad en nuestro dominio, se prepara a la propiedad para recibir o no la key

    // Ejemplo inicializado el decodable

let data8 = """
    {
        "name": "Miguel",
        "job": "Programmer",
        "age": null
    }
    """.data(using: .utf8)!

struct WorkerTwo: Decodable {
    let name: String
    let job: String
    let age: Int?
    
    enum CodingKeyss: String, CodingKey {
        case name
        case job
        case age
    }
    
    init(from decoder: Decoder) throws {
        let myContainer = try decoder.container(keyedBy: CodingKeyss.self)
        self.name = try myContainer.decode(String.self, forKey: .name)
        self.job = try myContainer.decode(String.self, forKey: .job)
        self.age = try myContainer.decodeIfPresent(Int.self, forKey: .age)
    }
}

let workersTwo = try JSONDecoder().decode(WorkerTwo.self, from: data8)
workersTwo.name
workersTwo.age



    // MARK: - Mapeo de datos anidados y nestedContainer

let data9 = """
    {
        "status": "ok",
        "totalResults": 34,
        "articles": [
            {
            "source": {
            "id": "google-news",
            "name": "Google News"
            },
            "author": "Diario Deportivo Récord",
            "title": "Santi Giménez pelea liderato de goleo con Rashford en la Europa League - Diario Deportivo Récord",
            "description": null,
            "url": "https://news.google.com/rss/articles/CBMiemh0dHBzOi8vd3d3LnJlY29yZC5jb20ubXgvZnV0Ym9sLWZ1dGJvbC1pbnRlcm5hY2lvbmFsLW1leGljYW5vcy1lbi1lbC1leHRyYW5qZXJvL3NhbnRpLWdpbWVuZXotcGVsZWEtbGlkZXJhdG8tZGUtZ29sZW8tY29u0gF-aHR0cHM6Ly93d3cucmVjb3JkLmNvbS5teC9mdXRib2wtZnV0Ym9sLWludGVybmFjaW9uYWwtbWV4aWNhbm9zLWVuLWVsLWV4dHJhbmplcm8vc2FudGktZ2ltZW5lei1wZWxlYS1saWRlcmF0by1kZS1nb2xlby1jb24_YW1w?oc=5",
            "urlToImage": null,
            "publishedAt": "2023-03-16T20:46:09Z",
            "content": null
            }
        ]
    }
    """.data(using: .utf8)!

struct Source: Decodable {
    let id: String
    let name: String
}

struct Articles: Decodable {
    let source: Source
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

struct NewsResponse: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Articles]
}

let news = try JSONDecoder().decode(NewsResponse.self, from: data9)
news.articles.forEach{ new in
    print("ℹ️: \(new.description ?? "No title")")
}

    // Ejemplo

let data10 = """
{
    "name_of_user": "SwiftBeta",
    "age": 30,
    "address": {
        "city": "Barcelona",
        "zip": "12345",
        "street": "Paseo SwiftBeta, Número 1"
    }
}
""".data(using: .utf8)!

struct Address: Decodable {
    let city: String
    let zip: String
}

struct UserInfo: Decodable {
    let name: String
    let age: Int
    let address: Address
    
    enum CodingKeys: String, CodingKey {
        case name = "name_of_user"
        case age
        case address
    }
    
    init(from decoder: Decoder) throws {
        let conainer = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try conainer.decode(String.self, forKey: .name)
        self.age = try conainer.decode(Int.self, forKey: .age)
        self.address = try conainer.decode(Address.self, forKey: .address)
    }
}

let userInfo = try JSONDecoder().decode(UserInfo.self, from: data10)
userInfo.address.city // Barcelona


    // Ejemplo de mapeo sin crear nuevos modelos (nestedContainer)

let data11 = """
{
    "name_of_user": "SwiftBeta",
    "age": 30,
    "address": {
        "city": "Barcelona",
        "zip": "12345",
        "street": "Paseo SwiftBeta, Número 1"
    }
}
""".data(using: .utf8)!


struct UserInfoTwo: Decodable {
    let name: String
    let age: Int
    let city: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name_of_user"
        case age
        case address
        case city
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.age = try container.decode(Int.self, forKey: .age)
        
        let address = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .address)
                // se accede a la informacion de la key address
        self.city = try address.decode(String.self, forKey: .city)
    }
    
    // Dos container:
        // 1ro El general: name, age
        // 2do El de address
}

let userInfoTwo = try JSONDecoder().decode(UserInfoTwo.self, from: data11)
userInfoTwo.city // Barcelona





    // MARK: - Consumiendo una API

/*
 
 url: https://pokeapi.co/api/v2/pokemon/
 
 {
    "count":1281,
    "next":"https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20",
    "previous":null,
    "results":[
       {
          "name":"bulbasaur",
          "url":"https://pokeapi.co/api/v2/pokemon/1/"
       },
       {
          "name":"ivysaur",
          "url":"https://pokeapi.co/api/v2/pokemon/2/"
       },
       {
          "name":"venusaur",
          "url":"https://pokeapi.co/api/v2/pokemon/3/"
       },
       {
          "name":"charmander",
          "url":"https://pokeapi.co/api/v2/pokemon/4/"
       },
 
 */

    // 1. Crear los modelos

struct PokemosDataModel: Decodable {
    // Propiedades
    let name: String
    let url: String
}

struct PokemonResponseDataModel: Decodable {
    // Propiedades
    //let count: Int
    //let next: String
    //let previous: String?
    let pokemons: [PokemosDataModel]
    
    // 2. Crear el enum
    enum CodingKeys: String, CodingKey {
        //case count
        //case next
        //case previous
        case pokemons = "results"
    }
    
    // 3. Inicializar el protocolo Decodable
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        //self.count = try container.decode(Int.self, forKey: .count)
        //self.next = try container.decode(String.self, forKey: .next)
        //self.previous = try container.decodeIfPresent(String.self, forKey: .previous)
        self.pokemons = try container.decode([PokemosDataModel].self, forKey: .pokemons)
    }
    
}

    // 4. Crear la clase con sus respectivos metodos y propiedades

final class ViewModel {
    
    // 5. URL del endpoint
    let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151")
    
    func getPokemons() {
        
        // 6. Singleton de URLSession
        let session = URLSession.shared
        
        // 7. 
        guard let url = url else {
            return
        }
        
        session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Ocurrio un error: \(error.localizedDescription)")
            }
            
            if let data = data, let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                let pokemonDataModel = try? JSONDecoder().decode(PokemonResponseDataModel.self, from: data)
                print("Pokemons: \(String(describing: pokemonDataModel))")
            }
        }.resume()
        
    }
    
}

let viewModel: ViewModel = ViewModel()
viewModel.getPokemons()

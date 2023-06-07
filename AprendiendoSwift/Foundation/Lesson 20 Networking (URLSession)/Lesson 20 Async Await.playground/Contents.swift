import UIKit

    // MARK: - Async/Await
        // Async/Await es una nueva forma para realizar peticiones a servicios
        // Callbacks vs Async/Await en Swift


struct CharacterModel: Decodable {
    
    let id: Int
    let name: String
    let image: String
    let episode: [String]
    let locationName: String
    let locationURL: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case image
        case episode
        case location
        case locationURL = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CharacterModel.CodingKeys> = try decoder.container(keyedBy: CharacterModel.CodingKeys.self)
        
        self.id = try container.decode(Int.self, forKey: CharacterModel.CodingKeys.id)
        self.name = try container.decode(String.self, forKey: CharacterModel.CodingKeys.name)
        self.image = try container.decode(String.self, forKey: CharacterModel.CodingKeys.image)
        self.episode = try container.decode([String].self, forKey: CharacterModel.CodingKeys.episode)
        
        let locationContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .location)
        self.locationName = try locationContainer.decode(String.self, forKey: .name)
        self.locationURL = try locationContainer.decode(String.self, forKey: .locationURL)
        
    }
    
    // Para agregar el codingkeys y el init, pulsar sobre nombre del struct command
    
}


struct EpisodeModel: Decodable {
    let id: Int
    let name: String
}

struct LocationModel: Decodable {
    let id: Int
    let name: String
    let dimension: String
}

class ViewModel {
    
    /// Metodo para realizar un GET a la api Rick and Morty para obtener informacion de un personaje (Rick).
    ///
    /// Realiza una peticion mediante callbacks o completion handlers.
    func executeRequest() {
        
        let characterURL = URL(string: "https://rickandmortyapi.com/api/character/1")!
        
        URLSession.shared.dataTask(with: characterURL) { data, response, error in
            let characterModel = try! JSONDecoder().decode(CharacterModel.self, from: data!)
            print("Character Model: \(characterModel)")
            
            let firstEpisodeURL = URL(string: characterModel.episode.first!)!
            
            URLSession.shared.dataTask(with: firstEpisodeURL) { data, response, error in
                let episodeModel = try! JSONDecoder().decode(EpisodeModel.self, from: data!)
                print("Episode Model: \(episodeModel)")
                
                let characterLocationURL = URL(string: characterModel.locationURL)!
                
                URLSession.shared.dataTask(with: characterLocationURL) { data, response, error in
                    let locationModel = try! JSONDecoder().decode(LocationModel.self, from: data!)
                    print("Location Model \(locationModel)")
                                    
                }.resume()
                
            }.resume()
            
        }.resume()
    }
    
    /// Metodo para realizar un GET a la api Rick and Morty para obtener informacion de un personaje (Rick).
    ///
    /// Realiza una peticion mediante Async/Await. Solo disponible en version swift 5.5 o mayor.
    func executeRequestInFactoredWay() async {
        let characterURL = URL(string: "https://rickandmortyapi.com/api/character/1")!
        
        let (data, response) = try! await URLSession.shared.data(from: characterURL)
        let characterModel = try! JSONDecoder().decode(CharacterModel.self, from: data)
        print("Character Model: \(characterModel)")
        
        let firstEpisodeURL = URL(string: characterModel.episode.first!)!
        let (dataFirstEpisode, responseFirstEpisode) = try! await URLSession.shared.data(from: firstEpisodeURL)
        let episodeModel = try! JSONDecoder().decode(EpisodeModel.self, from: dataFirstEpisode)
        print("Episode Model: \(episodeModel)")
        
        let characterLocationURL = URL(string: characterModel.locationURL)!
        let (dataCharacterLocation, responseCharacterLocation) = try! await URLSession.shared.data(from: characterLocationURL)
        let locationModel = try! JSONDecoder().decode(LocationModel.self, from: dataCharacterLocation)
        print("Location Model \(locationModel)")
        
    }
}


let viewModel = ViewModel()
viewModel.executeRequest()

// El metodo executeRequest() es muy complejo porque contiene funciones anidadas, son tres dataTask:
        // 1. El primer dataTask es para conseguir un personaje
        // 2. El segundo es para conseguir el episodio del personaje
        // 3. Y el ultimo es para conseguir la locacion
// En la 1ra peticion se realiza la 2a peticion y dentro de esta se encuentra la 3ra peticion, tiene la apariencia de una piramide ,a esto se le conoce como: "Pyramid of Doom"



Task {
    await viewModel.executeRequestInFactoredWay()
}
    // Debido que el metodo es async, para llamarlo es necesario ponerlo dentro un Task y anteponerle la palabra await

    // Ambas formas (callbacks y Async/Await) realizan las peticiones a tres endpoints, pero Async/Await permite que el codigo sea mas legible, entendible y fácil de mantener.

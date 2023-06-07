import UIKit

// MARK: Lazy var
// Una Lazy var es una propiedad cuyo valor inicial no se calcula hasta la primera vez que se llama. Es parte de una familia de propiedades en la que tenemos propiedades constantes, propiedades calculadas y propiedades mutables.

struct Calculator {
    static func calculateGamesPlayed() -> Int {
        var games: [Int] = []
        for i in 1...4_000 { games.append(i) }
        return games.last!
    }
}

struct Player {
    
    var name: String
    var team: String
    var position: String
    var gamesPlayed = Calculator.calculateGamesPlayed() // Siempre que inicialize Player, gamesPlayed se va a ejecutar. Esto no es eficiente porque contiene una funcion que toma algo de tiempo ejecutarse y no es necesario ejecutarla
    
    lazy var gamesPlayed2 = {
        return Calculator.calculateGamesPlayed()
    }()   // Si se coloca Calculator.calculateGamesPlayed() dentro de un closure con lazy, permitira ejecutar la funcion calculateGamesPlayed() solo cuando se llame.
    
    lazy var introduction = {
        return "Now entering the game: \(name), \(position) for the \(team)"
    }() // El closure no se ejecutara al inicializar Player, solo hasta que se llame, gracias a lazy
    
}

var jordan = Player(name: "Michael Jordan", team: "Bulls", position: "Shooting Guard")
jordan.introduction // Solo ejecuta cuando se llama

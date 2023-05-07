import UIKit

//*************************************************************************

// Tipos anidados || Nested Types
    // Forma mas compleja de crear Enums

struct ChessPiece {
    
    let color: Color
    let pieceType: PieceType
    
    enum Color: String {
        // Se crea un Enum para designar los colores de las piezas
        case white = "Blanca", black = "Negra"
    }
    
    enum PieceType: String {    //Enum con tipos anidados
        // Este Enum va a designar el tipo de pieza
        case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballero", pawn = "Peon"
        struct Number {
            // Dentro el enum (anidar) se puede definir un struct para designar al numero de piezas de cada tipo de piezas
            let number: Int
        }
        var number: Number {
            // Para obtener el numero de piezas mediante un closure
            switch self {
                // Self: Hace referencia al contexto donde se esta ejecutando. Donde el contexto es el enum PieceType
            case .king:
                // Se va a retornar la variable Number y su constructor, el cual lo va a recibir number (la constante dentro de la estructura)
                return Number(number: 1)
            case .queen:
                return Number(number: 1)
            case .rock:
                return Number(number: 2)
            case .bishop:
                return Number(number: 2)
            case .knight:
                return Number(number: 2)
            case .pawn:
                return Number(number: 6)
            }
        }
    }
    var description: String {   // Este es un closere
        // Esta variable representara con una cadena de texto el valor de la pieza de ajedrez
        if pieceType.number.number == 1 {
            return "Hay \(pieceType.number.number) pieza de ajedrez de color \(color.rawValue) y de tipo \(pieceType.rawValue)"
        } //else {  // Debido al return, no hace falta poner else
        return "Hay \(pieceType.number.number) piezas de ajedrez de color \(color.rawValue) y de tipo \(pieceType.rawValue)"
        //}
        
    }
}

var myPiece = ChessPiece(color: ChessPiece.Color.black, pieceType: ChessPiece.PieceType.rock)
print(myPiece.description)

myPiece = ChessPiece(color: .white, pieceType: .bishop)
print(myPiece.description)

myPiece = ChessPiece(color: .black, pieceType: .queen)
print(myPiece.description)

//*************************************************************************

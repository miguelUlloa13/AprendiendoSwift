import UIKit

// MARK: - Result Type -
    // Result Type, brinda una forma más simple y clara de manejar los errores en código complejo, como las API asíncronas.
    // Result Type se implementa como un enum que tiene dos casos: success y failure. Ambos se implementan usando generics para que puedan tener un valor asociado de nuestra eleccion, pero la falla debe ser algo que se ajuste al tipo de Error de Swift. Si lo desea, puede usar un tipo de error específico por ejemplo, como NetworkError, AuthenticationError o DivError.
    // Sintaxis de Result Type:
        // Result<TypeToReturn, ErrorEnum>

    // MARK: Primera forma sin utilizar Result type

/// Errors that can appear when executing divide method.
enum DivError: Error {
    case dividendNil
    case divisorNil
    case divisorZero(_ dividend: Float, _ divisor: Float)
}


///     Process of dividing a number into equal parts and determining how many equal parts can be made
/// - Parameters:
///   - dividend: The number to divide.
///   - divisor: The number of parts into which a number is going to be divided.
/// - Throws: Especific errors:
///     1. 'DivError.dividendNil' If dividend is Nil.
///     2. 'DivError.divisorNil' If divisor is Nil
///     3. 'DivError.divisorZero' If divisor is zero
/// - Returns: The result of division. More specifically, it is the size of each part of the number that was divided by the divisor.
func divide(dividend: Float?, divisor: Float?) throws -> Float {
    
    if dividend == nil {
        throw DivError.dividendNil
    } else if divisor == nil {
        throw DivError.divisorNil
    } else if divisor == 0 {
        throw DivError.divisorZero(dividend!, divisor!)
    }
    
    var quotient = Float(dividend! / divisor!)
    
   return quotient
    
}

do {
    print(try divide(dividend: 4, divisor: 0))
} catch DivError.dividendNil {
    print("El dividendo es nulo")
} catch DivError.divisorNil {
    print("El divisor es nulo")
} catch DivError.divisorZero(let dividend, let divisor) {
    print("Imposible dividir \(dividend) entre \(divisor)")
}


    // MARK: Solución usando Result type

/// Solution by Using Result. Process of dividing a number into equal parts and determining how many equal parts can be made.
/// - Parameters:
///   - dividend: The number to divide.
///   - divisor: The number of parts into which a number is going to be divided.
/// - Returns: The result of division, It can be two results:
///     - The real result
///     - A possible error
func divide2(dividend: Float?, divisor: Float?) -> Result<Float, DivError> {
    if dividend == nil {
        return .failure(.dividendNil)
    } else if divisor == nil {
        return .failure(.divisorNil)
    } else if divisor == 0 {
        return .failure(.divisorZero(dividend!, divisor!))
    }
    
    let quotient = Float(dividend! / divisor!)
    return .success(quotient)
}

let result = divide2(dividend: 2, divisor: 0)
switch result {
case .success(let answer):
    print("The answer is \(answer)")
case .failure(let error):
    switch error {
    case .dividendNil:
        print("El dividendo es nulo")
    case .divisorNil:
        print("El divisor es nulo")
    case .divisorZero(let dividend, let divisor):
        print("Imposible dividir \(dividend) entre \(divisor)")
    }
}



    // MARK: Usando el Result type en un método asíncrono

struct PostModel : Decodable {
    let title : String?
    let body : String?
}

enum RequestError: Error {
    case invalidUrl
    case errorDecode
    case failedRequest(error: Error)
    case requestTimedOut
    case unknownError
}


func fetchData(urlString: String, completion: @escaping (Result<[PostModel], RequestError>) -> Void) {
    // Validate string URL
    guard let url = URL(string: urlString) else {
        completion(.failure(.invalidUrl))
        return
    }
    // Send request
    URLSession.shared.dataTask(with: url) { data, response, error in
        // check if error happens
        if error != nil {
            completion(.failure(.failedRequest(error: error!)))
        } else if let data = data {
            // Success request
            do {
                // Decode to Array of post
                let posts = try JSONDecoder().decode([PostModel].self, from: data)
                completion(.success(posts))
            } catch {
                // Send error when decoding
                completion(.failure(.errorDecode))
            }
        } else {
            completion(.failure(.unknownError))
        }
    }.resume()
}


// Sample url
let apiPostURL = "https://jsonplaceholder.typicode.com/posts"
// Calling the method
fetchData(urlString: apiPostURL) { result in
    switch result {
    case .success(let posts):
        print(posts)
    case .failure(let requestError):
        switch requestError {
        case .invalidUrl:
            print("Error: Invalid URL detected")
        case .errorDecode:
            print("Error: Decode problem. Check the JSON data")
        case .failedRequest(let error):
            print(error.localizedDescription)
        case .requestTimedOut:
            print("Error: Timed out")
        case .unknownError:
            print("Error: Unknown")
        }
    }
}

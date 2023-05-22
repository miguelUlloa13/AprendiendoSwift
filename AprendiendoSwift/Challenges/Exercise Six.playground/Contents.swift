import UIKit

/* Realice un programa que solicite de la entrada estándar un entero del 1 al 10 y muestre en la salida estándar su tabla de multiplicar. */

// MARK: - Solution 1
class Solution {
    func showMultiplicationTable(number: Int) {
        let numbers = Array(1...10)
        for element in numbers {
            print("\(number) * \(element) = \(number * element)")
        }
    }
}

let solution = Solution()
solution.showMultiplicationTable(number: 4)


// MARK: - Solution 2
    // Retorna una matriz con el resultado
class SolutionTwo {
    func showMultiplicationTable(number: Int) -> [Int]{
        let numbers = Array(1...10)
        var result = numbers.map { $0 * number }
        return result
    }
}

let solutionTwo = SolutionTwo()
solutionTwo.showMultiplicationTable(number: 4)

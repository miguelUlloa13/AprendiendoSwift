import UIKit

/* Realice un programa que calcule y muestre en la salida estándar la suma de los cuadrados de los 10 primeros enteros mayores que cero. */

//MARK: Example 1
/*
 Input: nums = [1,2,3,4,5,6,7,8,9,10]
 Output: 385
 Explanation: Running sum is obtained as follows:  (1*1) + (2*2) + (4*4) + (5*5) + (6*6) + (7*7) + (8*8) + (9*9) + (10*10) = 385.
 */

// MARK: - Solution 1
class Solution {
    func sumOfSquares() {
        let numbers = Array(1...10)
        var sum = 0, square = 0
        for element in numbers {
            square = element * element
            sum += square
        }
        print("Result: \(sum)")
    }
}

let solution = Solution()
solution.sumOfSquares()


// MARK: - Solution 2
class SolutionTwo {
    func sumOfSquares() {
        let numbers = Array(1...10)
        var square = 0
        var tempArray:[Int] = []
        for element in numbers {
            square = element * element
            tempArray.append(square)
        }
        let result = tempArray.reduce(0, +)
        print("Result: \(result)")
    }
}

let solutionTwo = SolutionTwo()
solutionTwo.sumOfSquares()

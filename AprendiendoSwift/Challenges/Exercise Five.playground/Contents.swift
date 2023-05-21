import UIKit

// MARK: - Add Two Integers

// Given two integers num1 and num2, return the sum of the two integers.

// MARK: Example 1
/*
 Input: num1 = 12, num2 = 5
 Output: 17
 Explanation: num1 is 12, num2 is 5, and their sum is 12 + 5 = 17, so 17 is returned.
 */

// MARK: Example 2
/*
 Input: num1 = -10, num2 = 4
 Output: -6
 Explanation: num1 + num2 = -6, so -6 is returned.
 */

// MARK: Constraints
// -100 <= num1, num2 <= 100

// MARK: - Solution 1

class SolutionOne {
    func sum(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
}
let solutionOne = SolutionOne()
solutionOne.sum(12, 5)


// MARK: - Solution 2
class SolutionTwo {
    func sum(_ num1: Int?, _ num2: Int?) -> Int {
        guard let num1 = num1, let num2 = num2 else {
            return 0
        }
        return (num1 + num2)
    }
}

let solutionTwo = SolutionTwo()
solutionTwo.sum(nil, 5)


// MARK: - Solution 3
class SolutionThree {
    func sum(_ num1: Int?, _ num2: Int?) -> Int {
        if let num1 = num1, let num2 = num2 {
            if (-100 <= num1) && (num1 <= 100) && (-100 <= num2) && (num2 <= 100){
                return num1 + num2
            }
        }
        return 0
    }
}

let solutionThree = SolutionThree()
solutionThree.sum(-120, 11)

// MARK: - Solution 4
class SolutionFour {
    /// Add two numbers
    /// - Parameters:
    ///   - num1: Number one
    ///   - num2: Number two
    /// - Returns: Returns the sum of number 1 number 2
    func sum(_ num1: Int?, _ num2: Int?) -> Int {
        let lowerBound = -100
        let upperBound = 100
        let numberRange = lowerBound...upperBound
        
        if let num1 = num1, let num2 = num2 {
            if numberRange.contains(num1) && numberRange.contains(num2) {
                return num1 + num2
            }
        }
        return 0
    }
}

let solutionFour = SolutionFour()
solutionFour.sum(3, 4)

import UIKit

// MARK: - Fizz Buzz
/*
 Given an integer n, return a string array answer (1-indexed) where:

 answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
 answer[i] == "Fizz" if i is divisible by 3.
 answer[i] == "Buzz" if i is divisible by 5.
 answer[i] == i (as a string) if none of the above conditions are true.
 */

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        let array = Array(1...n)
        var result: [String] = []
        for element in array {
            divisible(num: element)
            result.append(divisible(num: element))
        }
        return result
    }
    
    private func divisible(num: Int) -> String {
        switch num {
        case let x where (x % 3 == 0) && (x % 5 == 0):
            return "FizzBuzz"
        case let x where x % 5 == 0:
            return "Buzz"
        case let x where x % 3 == 0:
            return "Fizz"
        default:
            return String(num)
        }
    }
}

let solution = Solution()
solution.fizzBuzz(100)



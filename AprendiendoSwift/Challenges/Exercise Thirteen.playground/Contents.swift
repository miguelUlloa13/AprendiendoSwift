import UIKit

//Two Sum Problem. Find all the pairs from ana given array which sum is equal to target.

var numberArray = [2,3,4,3,4,1,6,6,6,7,5,9,1,8,9]

final class Solution {
    func checkPairs(input: [Int], target: Int) -> [(Int,Int)] {
        var result: [(Int,Int)] = []
        for i in 0..<input.count {
            for j in i+1..<input.count {
                if input[i] + input[j] == target {
                    result.append((input[i], input[j]))
                }
            }
        }
        return result
    }
}

let solution = Solution()
print(solution.checkPairs(input: numberArray, target: 10))

print("*******************************************")

// Without duplicate values

final class SolutionTwo {
    func checkPairs(input: [Int], target: Int) -> [Int:Int] {
        var result: [Int:Int] = [:]
        for i in 0..<input.count {
            // print("i =",i)
            for j in i+1..<input.count {
                // print("j =",j, "i =",i)
                if input[i] + input[j] == target {
                    result[input[i]] = input[j]
                }
            }
        }
        return result
    }
}

let solutionTwo = SolutionTwo()
print(solutionTwo.checkPairs(input: numberArray, target: 10))




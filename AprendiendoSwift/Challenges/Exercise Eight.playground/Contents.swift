import UIKit

//MARK: - Running Sum of 1d Array
/*
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
 Return the running sum of nums.
 */

//MARK: Example 1
/*
 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 */

//MARK: Example 2
/*
 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 */

//MARK: Example 3
/*
 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
 */

// MARK: - Solution 1
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var sum = 0
        for element in nums {
            sum += element
            result.append(sum)
        }
        return result
    }
}

let solution = Solution()
solution.runningSum([1,2,3,4])

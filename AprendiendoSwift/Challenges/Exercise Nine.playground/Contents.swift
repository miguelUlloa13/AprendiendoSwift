import UIKit

//MARK: - Richest Customer Wealth
/*
 You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the ith customer has in the j​​​​​​​​​​​th​​​​ bank. Return the wealth that the richest customer has.

 A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.
 */

// MARK: Example 1
/*
 Input: accounts = [[1,2,3],[3,2,1]]
 Output: 6
 Explanation:
 1st customer has wealth = 1 + 2 + 3 = 6
 2nd customer has wealth = 3 + 2 + 1 = 6
 Both customers are considered the richest with a wealth of 6 each, so return 6.
 */

// MARK: Example 2
/*
 Input: accounts = [[1,5],[7,3],[3,5]]
 Output: 10
 Explanation:
 1st customer has wealth = 6
 2nd customer has wealth = 10
 3rd customer has wealth = 8
 The 2nd customer is the richest with a wealth of 10.
 */

// MARK: Example 3
/*
 Input: accounts = [[2,8,7],[7,1,3],[1,9,5]]
 Output: 17
 */

let accounts = [[1,2,3],[3,2,1]]

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var result: [Int] = []
        var sum = 0
        for account in accounts {
            sum = account.reduce(0, +)
            result.append(sum)
        }
        return result.max()!
    }
}

let solution = Solution()
solution.maximumWealth(accounts)

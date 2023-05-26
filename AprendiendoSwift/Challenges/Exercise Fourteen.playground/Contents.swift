import UIKit

// Even and Odd

final class Solution {
    
    func FindPrime(number: Int) -> Bool {
        guard number >= 2 else { return false }

        for i in 2 ..< number {
            if number % i == 0 {
                return false
            }
        }

        return true
    }
    
    
}

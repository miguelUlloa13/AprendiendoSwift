import UIKit

//MARK: - Use sort for multidimensional array

class Solution {
    func sortArray(_ array: [[Int]]) -> [[Int]] {
        var sortedArray = array.sorted { $0[0] < $1[0] }
        return sortedArray
    }
}

let numbersArray = [[1,45,777],[65,2,33],[0,544,6],[65,22,33,], [0,24,69],[7,111,63]]
let solution = Solution()
solution.sortArray(numbersArray)



for (element) in numbersArray.enumerated() {
    print("Index \(element.0)")
    print("Element \(element.1)")
}

for (element) in numbersArray {
    print("Element \(element[1])")
}


//MARK: - Use sort for array tuple

class OtherSolution {
    func sortArrayTuple(arrayTuple: [(Int,String)]) -> [(Int,String)] {
        var sortedArrayTuple = arrayTuple.sorted { $0 < $1 }
        return sortedArrayTuple
    }
}

let arrayTupe : [(Int, String)] = [
    (5, "test123"),
    (2, "test443"),
    (3, "test663"),
    (1, "test123")
]
let otherSolution = OtherSolution()
otherSolution.sortArrayTuple(arrayTuple: arrayTupe)

import UIKit

// Factorial
// x! = x ∗ (x − 1)! si x > 0, 0! = 1

// MARK: - Solution 1 Using for loop

class SolutionOne {
    func factorial(number: Int) -> Int {
        var output = 1, temp = 1
        
        if (number > 1) {
            for j in 1...number{
                temp = output * j
                print("\(output) * \(j) = \(temp)")
                output = temp
                
            }
        }
        return output
    }
}

let solutionOne = SolutionOne()
solutionOne.factorial(number: 6)

print("------------------------------")

// MARK: - Solution 2  Using multiplication assignment

class SolutionTwo {
    func factorial(number: Int) -> Int {
        var output = 1
        
        if (number > 1) {
            for j in 1...number{
                output *= j
                print("\(output)")
            }
        }
        return output
    }
}

let solutionTwo = SolutionTwo()
solutionTwo.factorial(number: 6)

print("------------------------------")

// MARK: - Solution 3  Using recursion

class SolutionThree {
    func factorial(number: Int) -> Int {
        
        // condition to break recursion
        if number == 0{
            return 1
            
        // condition for recursive call
        } else {
            return number * factorial(number:number-1)
        }
    }
}

let solutionThree = SolutionThree()
print(solutionThree.factorial(number: 6))

print("------------------------------")

// MARK: - Solution 4  High order function Reduce

class SolutionFour {
    func factorial(number: Int) -> Int {
        let array = Array(1...number)
        var output = 1

        if number == 0{
            return 1
            
        } else {
            output = array.reduce(1, *)
            return output
        }
    }
}

let solutionFour = SolutionFour()
print(solutionFour.factorial(number: 6))

import UIKit

// declare a class
class  Employee {
    
  var name: String
  var salary: Int

  // weak property declaration
  weak var colleague: Employee?

  // define initializer
  init(name: String, salary: Int) {
    self.name = name
    self.salary = salary
  }

  // define deinitializer
  deinit {
    print("Memory Deallocated")
  }
}

// create instances of Employee
var sabby: Employee? = Employee(name: "Sabby", salary: 50000)
var cathy: Employee? = Employee(name: "Cathy", salary: 45000)



// colleague property of sabby instance refers to cathy instance
sabby?.colleague = cathy


// colleague property of cathy instance refers to sabby instance
cathy?.colleague = sabby

// deallocate objects
sabby = nil
cathy = nil




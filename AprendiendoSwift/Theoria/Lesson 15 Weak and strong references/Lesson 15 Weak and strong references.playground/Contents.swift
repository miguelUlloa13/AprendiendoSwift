import UIKit

    // MARK: - Retain Cycles

    // En Swift, ARC (recuento automático de referencias) maneja automáticamente la asignación y desasignación de memoria.

//Sin embargo, podemos evitar que ARC asigne memoria automáticamente especificando el tipo de referencia. Por ejemplo, una referencia sólida mantiene un control firme sobre las instancias y no permite la desasignación por parte de ARC.

// Del mismo modo, una referencia débil no puede evitar que ARC desasigne las instancias.

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




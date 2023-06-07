import UIKit

// MARK: - Recursion -

// MARK: English
// A function that calls itself is known as a recursive function. And, this technique is known as recursion.

// MARK: Spanish
// Una función que se invoca (o llama) así misma se le conoce como una funcion recursiva. Y, esta tecnica es conocida como recursión

// MARK: Example
/*
 
 func recurse() {
   ... ...
   recurse()
   ...  ...
 }

 recurse()
 
 */
//
// ENG: Here, the recurse() function is calling itself over and over again.
// SPA: Aqui, la función recurse() se invoca por si mismi una y otra vez

// MARK: Stopping Condition for Recursion
// ENG: If we don't mention any condition to break the recursive call, the function will keep calling itself infinitely.
// Normally, a recursive function has two branches:
    // One for recursive calls.
    // Another for breaking the call under certain conditions.

//  SPA: Si no se agrega alguna condición para romper lnvocación recursiva, la función se mantendra invocandose por si misma infinitamente.
// Normalmente, una función recursiva tiene dos ramas:
    // Uno para llamadas recursivas.
    // Otro por romper la invocación bajo ciertas condiciones (if-statements, switch, etc.).

// MARK: Example - Program to count down number to 0

func countDown(number: Int) {

  // display the number
  print(number)

  // condition to break recursion
  if number == 0 {
  print("Countdown Stops")
  }

  // condition for recursion call
  else {
  
    // decrease the number value
    countDown(number: number - 1)
  }
}


print("Countdown:")
countDown(number:3)

// MARK: Advantages and Disadvantages of Function Recursion

// Below are the advantages and disadvantages of using recursion in Swift programming.

// 1. Advantages

// It makes our code shorter and cleaner.
// Recursion is required in problems concerning data structures and advanced algorithms, such as Graph and Tree Traversal.

// 2. Disadvantages

// It takes a lot of stack space compared to an iterative program.
// It uses more processor time.
// It can be more difficult to debug compared to an equivalent iterative program.

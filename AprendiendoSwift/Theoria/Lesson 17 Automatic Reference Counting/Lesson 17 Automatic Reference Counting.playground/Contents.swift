import UIKit

/*
 AUTOMATIC REFERENCE COUNTING
 
 Se encarga de eliminar intancias de memoria (objetos o variables). Por eje: Garbage collector.
 Swift lleva un contador (Retain Count) interno de las veces que se usa una instancia.
 ARC se utiliza para inicializar y desinicializar los recursos del sistema, liberando así los espacios de memoria utilizados por las instancias de clase cuando ya no se necesitan.
 Un Memory Leak ocurre cuando swift es incapaz de liberar la memoria porque no puede acceder a cierta referencia.
 
 */

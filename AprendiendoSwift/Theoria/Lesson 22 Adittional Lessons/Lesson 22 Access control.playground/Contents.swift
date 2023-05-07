import UIKit

//MARK: - Access Control

/*
 Control de acceso en Swift:
 Sirve para que el odigo sea mas seguro, se oculta la implentacion o
 funcionamiento de diferentes partes del programa de los usuario.
 Hay distintos tipos de control acceso:
 
    open: Se puede acceder a ese objeto en cualquier parte del codigo
    public: Se puede acceder a ese objeto en cualquier parte del codigo
    internal: Solo se puede acceder al objeto dentro del modulo/App
    fileprivate: Solo se puede acceder al objeto dentro del fichero
    private: Restringe el uso del objeto solo al contexto que esta definido.
 
 Un control de acceso se puede aplicar a:
    class
    struct
    enum
    var
    let
    func
 
 */

// MARK: - Ejemplo:

public class ejemploClase{
    private let ejemploConstante = 5
}




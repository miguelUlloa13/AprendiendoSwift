import UIKit

// MARK: - Extension -
        // la ectenssion sirve para añadir funcionalidad a una clase. struct, enum o un protocolo
        // Añadir caracteristicas al nivel del tipo de datos. Se añadira una caracteristica nueva y todos los datos de ese tipo pasaran a poseerla. Por ej: agregar propiedades de distancia, definicion de funcion, nuevos inicializadores, subindices, tipos de datos anidados, o adaptar que cual tipo se adapte a un protocolo

let MyMeter: Double = 5000

func metersToKm(meters: Double) -> Double {
    return meters/1000
}

print(metersToKm(meters: MyMeter))

extension Double {  // Este es el double que se le quiere aumentar la funcionalidad
    
    var km:Double {
        // variable para pasar metros a kilometros
        // self hace referencia al numero al dato en si (El Double que le quiere aumentar la funcionalidad)
        return self / 1000
    }
    
    var m: Double {
        return self
    }
    
    var cm: Double {
       return self * 100
    }
}

print(MyMeter.km)



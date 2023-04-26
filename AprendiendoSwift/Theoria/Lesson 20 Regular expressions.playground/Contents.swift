import UIKit
// Expreción regular = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"


// Metodo para validar un email
func isValidEmail(_ email: String) -> Bool {
    let usrName = "[A-Z0-9a-z._%+-]"    // Exprecion regular del nombre de usuario
    let provider = "[A-Za-z0-9.-]"      // Exprecion regular del proveedor del correo
    let domain = "[A-Za-z]"             // Tipo de dominio
    let emailRegEx = usrName + "+@" + provider + "+\\." +  domain + "{2,64}"    // Exprecion regular. Un minimo de 2 caracteres a un maximo de 64 caracteres
    // * Formato de un nombre de dominio
    // Cada elemento de un nombre de dominio separado por [.] se denomina "etiqueta". La longitud máxima de cada etiqueta es de 63 caracteres y un nombre de dominio completo puede tener un máximo de 253 caracteres.
    
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}

isValidEmail("miguel14235@gmail.com")


//    Longitud de 6 a 16 caracteres
//    One Alphabet in Password.
//    One Special Character in Password.
func isValidPassword(password: String) -> Bool {
    let passwordRegEx = "^(?=.*[a-z])(?=.*[$@$#+!%*?&])[A-Za-z\\d$@$#!+%*?&]{6,16}"
    let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
    let result = passwordTest.evaluate(with: password)
    return result
}

isValidPassword(password: "miguel+13")

import UIKit

    // MARK: = Protocolo delegado
        // Consiste en dar una responsabilidad a otro objeto para que complemente un trabajo.
        // Permite comunicar dos clases en sentido inverso
        // Delegar es encomendar la tarea a otro elemento

class FirstClass: SecondClassProtocol {
    
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
    func call() {
        print("Estoy de vuelta!")
    }
    
}



protocol SecondClassProtocol {
    func call ()
}

class SecondClass {
    
    var delegate: SecondClassProtocol?  // por convencion la variable se llama delegate
    
    func callFirst() {
        sleep(5)
        delegate?.call()
    }
}

let firstClass = FirstClass ()
firstClass.callSecond()





    // MARK: - Ejemplo Uno

class ProfileView: ProfileUIProtocol {
    
    func addNewUserName() {
        let presenter = ProfilePresenter()
        presenter.delegate = self
        presenter.saveUser(name: "Miguel Ulloa")
        // presenter se encargara de guardar el nuevo nombre del usuario. Es decir, delegaremos esta responsabilidad a ProfilePresenter
    }
    
    func didUpdateName() {
        print("Show banner")
    }
}

protocol ProfileUIProtocol: AnyObject {
    
    func didUpdateName()
    
}

class ProfilePresenter {
    
    weak var delegate: ProfileUIProtocol?
    
    func saveUser(name: String) {
        print("New \(name) name saved...")
        delegate?.didUpdateName()
        // Cuando el presenter acabe de guardar el nombre, se llama al método didUpdateName() de la variable delegate
    }
}


let user = ProfileView()
user.addNewUserName()

/*
 
 1. presenter se encargara de guardar el nuevo nombre del usuario. Es decir, delegaremos esta responsabilidad a ProfilePresenter.
 2. Cuando el presenter acaba, llama a delegate (ó ProfileView) con el método de didUpdateName() para que la vista muestre un banner o cualquier otro cambio.
 
 */



    // MARK: - Ejemplo Dos Con parametros

class FirstViewController: APIClientProtocol {
    func getAPI() {
        let apiClient = APIClient()
        apiClient.delegate = self
        apiClient.getData()
    }
    
    func updateUser(_ user: String) {
        print(user)
    }
}

protocol APIClientProtocol {
    func updateUser(_ user: String)
}

class APIClient {
    var delegate: APIClientProtocol?  // por convencion la variable se llama delegate
    
    func getData() {
        sleep(2)
        delegate?.updateUser("userID: 1; userName: Miguel Ulloa;")  // Se recibe el JSON de usuarios
    }
}

let firstViewController = FirstViewController()
firstViewController.getAPI()

/*
 
 1. apiClient se encargara de obtener la api de usuarios. Es decir, delegaremos esta responsabilidad a APIClient.
 2. Cuando el apiClient ya recibe el JSON de usuarios, llama a delegate (ó FirstViewController) con el método de updateUser() para que la vista FirstViewController muestre el JSON recibido.
 
 */
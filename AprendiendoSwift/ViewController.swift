//
//  ViewController.swift
//  AprendiendoSwift
//
//  Created by Miguel Angel Bric Ulloa on 30/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let otherClass: OtherClass = OtherClass()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        otherClass.sayHellow()
        
    }
 
}


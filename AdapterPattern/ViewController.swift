//
//  ViewController.swift
//  AdapterPattern
//
//  Created by 3rabApp-oday on 09/08/2023.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let frogAdaptee = FrogAdaptee()
        let frogAdapter = FrogAdapter(frogeAdaptee: frogAdaptee)
        frogAdapter.Jump()
        
        printAnimalsWhatCabJump(animals: [dog(),cat(),frogAdapter])
    }
    
    func printAnimalsWhatCabJump(animals:[JumpingProtocol]){
        for animal in animals {
            print(animal.Jump())
        }
    }
}

class cat:JumpingProtocol {
    func Jump() {
        print("iam cat and can jump")
    }
}

class dog:JumpingProtocol{
    func Jump() {
        print("iam dog and can jump")
    }
    
}

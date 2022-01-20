//
//  ViewController.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 11/01/22.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getViagens()
    }

    func getViagens() {
        guard let listaDeViagens = ViagemAPI().getViagens() else { return }
        
        
        
    }
}


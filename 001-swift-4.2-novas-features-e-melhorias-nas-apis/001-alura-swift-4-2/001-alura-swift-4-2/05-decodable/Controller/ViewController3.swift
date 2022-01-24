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
        guard let json = ViagemAPI().getViagens() else { return }
        guard let jsonData = Viagem2.converteListaParaData(json) else { return }
        let listaDeViagens = Viagem2.decodificaViagem(jsonData)
        print(listaDeViagens)
    }
}


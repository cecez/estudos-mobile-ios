//
//  ViewController.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 11/01/22.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        favoritaViagem()
    }

    func favoritaViagem() {
        let viagem = Viagem(1, "Porto Alegre", 15, "49,90", "Brasil")
        
        let parametros: [String: Any] = [
            "id": viagem.id,
            "titulo": viagem.titulo,
            "quantidade_de_dias": viagem.quantidadeDeDias,
            "preco": viagem.preco,
            "localizacao": viagem.localizacao
        ]
    }
}


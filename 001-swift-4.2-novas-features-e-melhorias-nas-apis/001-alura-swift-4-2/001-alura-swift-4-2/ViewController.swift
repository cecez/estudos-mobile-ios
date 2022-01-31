//
//  ViewController.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 11/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // baixar JSON da web
        Helper.loadJson(fromURLString: "https://pokeapi.co/api/v2/pokemon?limit=10") { (result) in
            switch result {
                case .success(let dataJson):
                    print("sucesso")
                    let resultado = try! JSONSerialization.jsonObject(with: dataJson, options: .allowFragments)
                    let retornoAPI = resultado as? [String: Any]
                    guard let listaDePokemons = retornoAPI?["results"] as? [[String: Any]] else { return }
                    print(listaDePokemons)
                
                case .failure(let error):
                    print("falha")
                    print(error)
            }
        }
        
        
        
        // decodificar (com Decodable)
        
        // printar no console/tela
        print("eu fui chamado, valeus!");
    }


}


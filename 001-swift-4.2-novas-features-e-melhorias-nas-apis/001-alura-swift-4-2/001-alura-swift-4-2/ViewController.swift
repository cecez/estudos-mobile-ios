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
                    guard
                        let resultado = try? JSONSerialization.jsonObject(with: dataJson, options: .allowFragments),
                        let retornoAPI = resultado as? [String: Any],
                        let listaDeDados = retornoAPI["results"] as? [[String: Any]],
                        let listaDeDados2 = Pokemon.converteListaParaData(listaDeDados),
                        let listaDePokemons = Pokemon.decodifica(listaDeDados2)
                    else { return }
                
                    for pokemon in listaDePokemons {
                        print(pokemon.nome)
                    }
                
                case .failure(let error):
                    print(error)
            }
        }
        
        
        
        // decodificar (com Decodable)
        
        
    }


}


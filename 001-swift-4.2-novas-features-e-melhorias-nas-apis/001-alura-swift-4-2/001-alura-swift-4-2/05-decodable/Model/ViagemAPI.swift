//
//  ViagemAPI.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 20/01/22.
//

import Foundation

class ViagemAPI {
    
    func getViagens() -> [[String: Any]]? {
        // abre arquivo
        guard let caminho = Bundle.main.url(forResource: "viagens", withExtension: "json") else { return nil }
        
        // obtém dados brutos do arquivo
        let json: Data = try! Data(contentsOf: caminho)
        
        do {
            let viagens = try JSONSerialization.jsonObject(with: json, options: .allowFragments)
            let listaDeViagens = viagens as? [[String: Any]]
            return listaDeViagens
        } catch {
            print(error.localizedDescription)
        }
        
        // se não conseguiu
        return nil
    }
    
}

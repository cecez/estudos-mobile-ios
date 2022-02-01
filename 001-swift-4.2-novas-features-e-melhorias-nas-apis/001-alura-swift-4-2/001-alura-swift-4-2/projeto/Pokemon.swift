//
//  Pokemon.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 01/02/22.
//

import Foundation

class Pokemon: NSObject, Decodable {
    
    enum CodingKeys: String, CodingKey {
        case url, nome = "name"
    }
    
    // MARK: - Atributos
    
    let nome: String
    let url: String
    
    // MARK: - Init

    init(_ nome: String, _ url: String) {
        self.nome = nome
        self.url = url
    }
    
    class func converteListaParaData(_ json: [[String: Any]]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }
    
    class func decodifica(_ json: Data) -> [Pokemon]? {
        do {
            return try JSONDecoder().decode([Pokemon].self, from: json)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
}

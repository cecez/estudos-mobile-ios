//
//  Viagem.swift.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 21/01/22.
//

import Foundation

class Viagem2: NSObject, Decodable {
    
    enum CodingKeys: String, CodingKey {
        case id, titulo, quantidadeDeDias = "quantidade_de_dias", preco, localizacao
    }
    
    // MARK: - Atributos
    
    let id: Int
    let titulo: String
    let quantidadeDeDias: Int
    let preco: String
    let localizacao: String
    
    // MARK: - Init
    
    init(_ id: Int, _ titulo: String, _ quantidadeDeDias: Int, _ preco: String, _ localizacao: String) {
        self.id = id
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.localizacao = localizacao
    }
    

    
    // MARK: - Métodos
    
    class func converteListaParaData(_ json: [[String: Any]]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }
    
    class func decodificaViagem(_ json: Data) -> [Viagem2]? {
        do {
            return try JSONDecoder().decode([Viagem2].self, from: json)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}



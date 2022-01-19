//
//  Viagem.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 19/01/22.
//

import Foundation

class Viagem: NSObject
{
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
    
}

extension Viagem: Encodable {
    enum CodingKeys: String, CodingKey {
        case id, titulo, quantidadeDeDias = "quantidade_de_dias", preco, localizacao
    }
}

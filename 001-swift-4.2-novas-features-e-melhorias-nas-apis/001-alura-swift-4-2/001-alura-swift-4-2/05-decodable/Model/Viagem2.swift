//
//  Viagem.swift.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 21/01/22.
//

import Foundation

class Viagem2 {
    
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
    
    convenience init() {
        self.init(0, "", 0, "", "")
    }
    
    // MARK: - Métodos
    
    func desserializa(_ json: [[String: Any]]) -> [Viagem2] {
        var listaDeViagens: [Viagem2] = []
        
        for viagem in json {
            guard
                let id = viagem["id"] as? Int,
                let titulo = viagem["titulo"] as? String,
                let quantidadeDeDias = viagem["quantidade_de_dias"] as? Int,
                let preco = viagem["preco"] as? String,
                let localizacao = viagem["localizacao"] as? String
            else { return listaDeViagens }
            
            let novaViagem = Viagem2(id, titulo, quantidadeDeDias, preco, localizacao)
            listaDeViagens.append(novaViagem)
        }
        
        return listaDeViagens
    }
}

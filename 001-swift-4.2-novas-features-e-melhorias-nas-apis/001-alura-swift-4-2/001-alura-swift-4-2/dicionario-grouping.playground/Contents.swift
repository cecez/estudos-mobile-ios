import UIKit

// forma tradicional para agrupamento
var alunos = [
    "Cezar": "Swift",
    "João Pedro": "Mario Maker 2",
    "Ana Paula": "Minecraft",
    "Miguel": "Minecraft",
    "Manoel": "Padeiro"
]

// criando dicionário agrupado pela letra inicial do aluno
var dicionarioDeNomes: [String: [String]] = [:]

for aluno in alunos {
    if let letraInicial = aluno.key.first {
        let letraInicialString = String(letraInicial)
        
        if dicionarioDeNomes[letraInicialString] != nil {
            dicionarioDeNomes[letraInicialString]?.append(aluno.key)
        } else {
            dicionarioDeNomes[letraInicialString] = [aluno.key]
        }
        
    }
}

print(dicionarioDeNomes)

// forma de agrupamento nova, com método
var alunos2 = [
    "Cezar": "Swift",
    "João Pedro": "Mario Maker 2",
    "Ana Paula": "Minecraft",
    "Miguel": "Minecraft",
    "Manoel": "Padeiro"
]

let dicionarioNomes2 = Dictionary(grouping: alunos2.keys) { $0.prefix(1) }

print(dicionarioNomes2)

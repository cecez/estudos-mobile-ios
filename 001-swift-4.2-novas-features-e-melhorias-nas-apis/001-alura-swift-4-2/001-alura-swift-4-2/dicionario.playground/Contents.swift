import UIKit

// dicionário String:String
var alunos = [
    "Cezar": "Swift",
    "João Pedro": "Mario Maker 2",
    "Ana Paula": "Minecraft",
    "Miguel": "Minecraft"
]

let novosAlunos = [
    "Gustavo": "Python",
    "Marcos": "Swift",
    "Miguel": "C"
]

// incluindo novosAlunos em alunos, forma tradicional
novosAlunos.forEach({
    // forma 2
    if (!alunos.keys.contains($0.key)) {
        alunos[$0.key] = $0.value
    }
////    só insere se não existir key
//    if (alunos.index(forKey: $0.key) == nil) {
//        alunos[$0.key] = $0.value
//    }
    
//    print($0.key)
//    print(alunos.index(forKey: $0.key))
})

alunos = [
    "Cezar": "Swift",
    "João Pedro": "Mario Maker 2",
    "Ana Paula": "Minecraft",
    "Miguel": "Minecraft"
]

// forma com método merge()
// é possível informar se, caso dicionários tenham a mesma key, qual delas escolher
alunos.merge(novosAlunos) { _ , segundaChave in segundaChave }

print(alunos)

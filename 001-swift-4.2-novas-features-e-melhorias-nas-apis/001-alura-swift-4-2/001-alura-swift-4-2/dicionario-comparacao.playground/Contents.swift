import UIKit


let alunosQuimica = ["João": 10, "Ana": 10, "Cezar": 10]
print(type(of: alunosQuimica))

let alunosFisica = ["João": nil, "Ana": 10, "Cezar": 0]
print(type(of: alunosFisica))

// antes não era permitido comparação entre dicionários com tipos diferentes
print(alunosQuimica == alunosFisica)

/*
 Retorno:
 
 Dictionary<String, Int>
 Dictionary<String, Optional<Int>>
 false
 
 */

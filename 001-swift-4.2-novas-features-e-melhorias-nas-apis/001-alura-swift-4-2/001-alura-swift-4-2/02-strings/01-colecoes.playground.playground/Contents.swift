import UIKit

var texto = "Uma string é um array/coleção de caracteres.!!!"

print(type(of: texto))

print(texto.filter({ $0 != "!" }))

texto.forEach { print($0, separator: "", terminator: "-") }

/*
 Retorno:
 
 String
 Uma string é um array de caracteres.
 U-m-a- -s-t-r-i-n-g- -é- -u-m- -a-r-r-a-y- -d-e- -c-a-r-a-c-t-e-r-e-s-.-!-!-!-
 
 
 */

let mensagem = "Bla bla bla13"
print("\n" + String(mensagem.count))

/*
 Retorno: 13
 */

let mensagemMultiLineString = """
Loucura total
quebrando linhas
na string sem colocar barra n
"""
print(mensagemMultiLineString)
/*
 Retorno:
 Loucura total
 quebrando linhas
 na string sem colocar barra n
 */

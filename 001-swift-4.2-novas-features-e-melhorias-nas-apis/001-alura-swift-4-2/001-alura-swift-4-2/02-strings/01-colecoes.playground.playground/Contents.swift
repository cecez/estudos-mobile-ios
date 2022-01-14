import UIKit

var texto = "Uma string é um array de caracteres.!!!"

print(type(of: texto))

print(texto.filter({ $0 != "!" }))

texto.forEach { print($0, separator: "", terminator: "-") }

/*
 Retorno:
 
 String
 Uma string é um array de caracteres.
 U-m-a- -s-t-r-i-n-g- -é- -u-m- -a-r-r-a-y- -d-e- -c-a-r-a-c-t-e-r-e-s-.-!-!-!-
 
 
 */

import UIKit

// número randômico
let numeroRandomico = Int.random(in: 0..<10)
print(numeroRandomico)


// elemento randômico de array
let listaDeBandas = ["Aqua", "Beatles", "Cascaveletes", "Donavan Frankenheit"]
print(listaDeBandas.randomElement())

// invertendo um valor boolean
var souBooleano = true
print(souBooleano)
souBooleano.toggle()
print(souBooleano)


// embaralhando uma lista
print(listaDeBandas.shuffled())

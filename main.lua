os.execute("chcp 65001")
local pessoa = require "pessoa"
local Utils = require "Utils"

pessoa.cNome   = Utils.PrintInput("Oá, Por favor digite seu Nome: ")
pessoa.iIdade  = Utils.PrintInput("Muito bem "..pessoa.cNome..", digite sua Idade: ")
pessoa.iAltura = Utils.PrintInput("Digite sua Altura em Metros.\nEx: 1.92: ")
pessoa.nPeso   = Utils.PrintInput("Digite seu Peso: ")
os.execute("cls")

local ResultadoIMC = Utils.Round(pessoa.RealizarCalculo(pessoa), 2)

print(" ___________________________________________")
print("|Nome: "          .. pessoa.cNome)
print("|___________________________________________|")
print("|Idade: "         .. pessoa.iIdade)
print("|___________________________________________|")
print("|Altura: "        .. pessoa.iAltura.." m")
print("|___________________________________________|")
print("|Peso: "          .. pessoa.nPeso  .." KG")
print("|___________________________________________|")
print("|Resultado IMC: " ..ResultadoIMC)
print("|___________________________________________|")
print("|"..pessoa.ClassificacaoIMC(ResultadoIMC))
print("|___________________________________________|")


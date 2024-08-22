local Utils = require "Utils"

P = {}

P.Pessoa = {
    cNome
   ,iIdade
   ,iAltura 
   ,nPeso 
 }

function P.ClassificacaoIMC (IMC)
    local cCor
    local cClassificacao

    if IMC < 18.5 then
      cClassificacao = "MAGREZA" 
      cCor = "MAGREZA"
    elseif IMC < 24.9 then
      cClassificacao = "NORMAL"
      cCor = "NORMAL"
    elseif IMC < 29.9 then  
      cClassificacao = "SOBREPESO"
      cCor = "SOBREPESO"
    elseif IMC < 39.9 then
      cClassificacao = "OBESIDADE"
      cCor = "OBESIDADE"
    elseif IMC > 40.0 then
      cClassificacao = "OBESIDADE GRAVE"
      cCor = "OBESIDADE_GRAVE"
    end

    return Utils.MudarCorTextoIMC(cCor) .. cClassificacao .. Utils.MudarCorTextoIMC("reset")
  end

function P.RealizarCalculo (oPessoa)
    local Resultado = oPessoa.nPeso / (oPessoa.iAltura * oPessoa.iAltura)
     return Resultado
  end

 return P
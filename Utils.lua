local U = {}

function U.Round(iNum, iCasasDecimais)
    local mult = 10^(iCasasDecimais or 0)
    return math.floor(iNum * mult + 0.5) / mult
end

function U.PrintInput(cMensagem)
    print(cMensagem)
    return io.read()
end

function U.MudarCorTextoIMC(color)
    local colors = {
        reset = "\27[0m",           -- Garante que as configurações sejam aplicadas apenas ao texto de Classificação
        MAGREZA = "\27[34m",        -- Azul para MAGREZA
        NORMAL = "\27[32m",         -- Verde para NORMAL
        SOBREPESO = "\27[33m",      -- Amarelo para SOBREPESO
        OBESIDADE = "\27[31m",      -- Vermelho para OBESIDADE
        OBESIDADE_GRAVE = "\27[41m" -- Fundo vermelho para OBESIDADE GRAVE
    }
    return colors[color] or colors.reset
end

return U
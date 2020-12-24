class Conta 
    attr_accessor :saldo, :mensagem_saida

    def saque(valor)
         if @saldo > valor
            if valor <= 700
                @saldo -= valor
                @mensagem_saida = 'Saque com sucesso. Muito obrigado!'
            else
                @mensagem_saida = 'Valor limite!'
            end
        else
            @mensagem_saida = 'Saldo insuficiente para saque.'
        end
    end
end
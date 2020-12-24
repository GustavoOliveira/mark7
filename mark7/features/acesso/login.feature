#language:pt

Funcionalidade: Login
    Para que eu possa cadastra e gerenciar minhas tarefas
    Sendo um Usuário
    Posso acessar o sistema com o meu email e senha preciamente cadastrado

    Contexto:
        Dado que eu acessei o sistema

        @sprint1 @logout
        Cenário: Usuário autenticado
            Quando faço login com "lgstvoliveira@gmail.com" e "102030"
            Então vejo a mensagem de boas vindas "Olá, Luiz Gustavo de Oliveira"
        
        @tentaiva
        Esquema do Cenário: Tentativa de login
            Quando faço login com "<email>" e "<senha>" 
            Então vejo a mensagem de alerta "<saida>"
            
            Exemplos:
            |email                   |senha     |saida  |
            |juca@gmail.com          |123456    |Usuário não cadastrado.|
            |lgstvoliveira@gmail.com |5555555   |Senha inválida.|
            |                        |102030    |Email incorreto ou ausente.|
            |lgstvoliveira@gmail.com |          |Senha ausente.|

        # @sprint1
        # Cenário: Senha incorreta
        #     Quando faço login com "lgstvoliveira@gmail.com" e "101010"
        #     Então vejo a mensagem de alerta "Senha inválida."

        # @sprint1
        # Cenário: Usuário não cadastrado
        #     Quando faço login com "jean@gmail.com" e "102030"
        #     Então vejo a mensagem de alerta "Usuário não cadastrado."

        # @sprint2
        # Cenário: Email deve ser obrigatório
        #     Quando faço login com "" e "102030"
        #     Então vejo a mensagem de alerta "Email incorreto ou ausente."

        # @sprint2
        # Cenário: Senha deve ser obrigatória
        #     Quando faço login com "jean@gmail.com" e ""
        #     Então vejo a mensagem de alerta "Senha ausente."
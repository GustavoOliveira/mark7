#language:pt
Funcionalidade: Meu perfil
    Para que eu possa manter meus dados atualizados
    Sendo um Usuário
    Posso completar o meu cadastro perfil

    @logout
    Esquema do Cenário: Atualizar perfil
        Dado que eu esteja logado com "<email>" e "<senha>"
        E acesso o meu perfil
        Quando completar o meu cadastro "<empresa>" e "<cargo>"
        Então devo ver a mensagem de atualização cadastral
        """
        Perfil atualizado com sucesso.
        """
        Exemplos:
        |email                   |senha |empresa   |cargo|
        |lgstvoliveira@gmail.com |102030|Yahoo     |Developer|
        |teste@teste.com         |101010|Google    |QA|
        |teste2@teste.com        |202020|Microsoft |CEO|
        |teste3@teste.com        |303030|Linkedin  |CTO|
        |teste4@teste.com        |404040|Facebook  |Estagiario|
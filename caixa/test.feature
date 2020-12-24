Sprint 1
Estória do Usuário Login
Para que eu possa cadastra e gerenciar minhas tarefas
Sendo um Usuário
Posso acessar o sistema com o meu email e senha preciamente cadastrado

fazer login com email e senha
Clicou em OK, é autenticado com sucesso
Olá, Fulano

Cenário: Usuário autenticado

    Dado que eu acessei o sistema
    Quando faço login com "eu@papito" e "123456"
    Então veja a seguinte mensagem "Olá Fernando"

Cenário: Senha incorreta
    Dado que eu acessei o sistema
    Quando faço login com senha incorreta
    Então vejo a seguinte mensagem "Senha inválida"

Cenário: Usuário não cadastrado
    Dado que eu acessei o sistema
    Quando faço com um email que não está cadastrado 
    Então vejo a seguinte mensagem "Usuário não cadastrado"

Cenário: Email deve ser obrigatório
    Dado que eu acessei o sistema  
    Quando faço login sem informar o Email
    Então vejo a mensagem "Email deve ser preenchido"

Cenário: Senha deve ser obrigatória
    Dado que eu acessei o sistema
    Quando faço login sem informar a Senha
    Então vejo a mensagem "Senha deve ser preenchida"
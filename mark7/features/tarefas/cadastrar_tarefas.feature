#language: pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa organizar minha vida
    Sendo um usuario cadastrado
    Posso adicionar novas tarefas no meu painel

    @smoke @login
    Cenário: Nova tarefa
        Dado que o nome da minha tarefa é "Fazer Compras"
        E a data de finalização será "20/08/2018"
        E quero taguear esta tarefa com:
            |tag|
            |Compras|
            |SuperMercado|
            |Ketchup|
            |Mostarda|
            |Maionese|
        Quando faço o cadastro desta tarefa
        Então dever esta tarefa com o status "Em andamento"
        E devo ver somente 1 tarefa com o nome cadastrado

    @tentativa @login
    Esquema do Cenário: Tentar cadastrar
        Dado que o nome da minha tarefa é "<nome>"
        E a data de finalização será "<data>"
        Quando faço o cadastro desta tarefa
        Então devo ver a seguinte mensagem: "<mensagem>"
        E devo ver somente 0 tarefa com o nome cadastrado
        
        Exemplos: 
        |nome   |data       |mensagem |
        |Ler    |21/08/2018 |10 caracteres é o mínimo permitido.|
        |       |21/08/2020 |Nome é obrigatório.|

    @dup @login
    Cenário: Tarefa não pode ser duplicada
        Dado que o nome da minha tarefa é "Ler o blog de MongoDB"
        E a data de finalização será "21/08/2018"
        Mas eu já cadastrei essa tarefa e esqueci
        Quando faço o cadastro desta tarefa
        Então devo ver a seguinte mensagem: "Tarefa duplicada."
        E devo ver somente 1 tarefa com o nome cadastrado
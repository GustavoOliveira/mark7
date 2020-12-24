#language: pt

Funcionalidade: Autenticação

    Contexto: Cadastrar usuario
        Dado que esteja na home
        Quando abrir a tela de cadastro

        @feliz @delete_users
        Esquema do Cenário: Realizar Cadastro
            Quando realizar cadastro com "<nome>" e "<email>" e "<senha>" 
            Então deverá ser exibido o nome do usuário na pagina de Tarefas
 
            Exemplos:
                | nome              | email               | senha  |
                | Ricardo Santos    | test@automation.com | 123321 |
                | Luiz gustavo      | aut@aut.com         | 456654 |

        @triste
        Esquema do Cenário: Realizar Cadastro Exception
            Quando realizar cadastro com "<nome>" e "<email>" e "<senha>" 
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
                | nome              | email               | senha  | mensagem                    | 
                |                   | test@automation     | 123321 | Nome é obrigatório.         |
                | aut               | asdadsasddsad       | 456654 | Informe um email válido.    |
                | Luiz gustavo      |                     | 456654 | Email é obrigatório.        |
                | Luiz gustavo      | aut@aut.com         | 456654 | Email já existe             | 
                | Luiz gustavo      | test@automation.com |        | Informe uma senha.          |

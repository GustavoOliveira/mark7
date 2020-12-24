Dado('que esteja na home') do
    visit '/'
end

Quando('abrir a tela de cadastro') do
    @cadastro_page.acessa_cadastro
end

Quando('realizar cadastro com {string} e {string} e {string}') do |nome, email, senha|
    @nome_usu = nome

    # DAO.new.remover_usuario(email)
    @cadastro_page.cadastrar(@nome_usu, email, senha)
end

Então('deverá ser exibido o nome do usuário na pagina de Tarefas') do
    expect(@tarefas_page.painel).to have_content "Olá, #{@nome_usu}"
end

Então('deverá ser exibida a mensagem de erro {string}') do |mensagem|
    expect(@cadastro_page.alerta).to have_content mensagem
end
class CadastroPage
    include Capybara::DSL

    def acessa_cadastro
        find('#login_form a[href*=register]').click
    end

    def alerta
        find('.alert-message')
    end

    def cadastrar(nome, email, senha)
        find('#register_name').set nome 
        find('#register_email').set email
        find('#register_password').set senha

        within('#register_form') do
            click_button 'Cadastrar'
        end
        sleep 2
    end
end
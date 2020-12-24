class PerfilPage
    include Capybara::DSL

    def completa_cadastro(empresa, cargo)
        find('#profile-company').set empresa

        combo = find('select[name$=job]')
        combo.find('option', text: cargo).select_option

        click_button 'Salvar'
        sleep 2
    end
    
    def alert
        find('.alert-login')
        
    end
end
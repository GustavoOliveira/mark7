Before do
    @nav = Navbar.new
    @login_page = LoginPage.new
    @side = Sidebar.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new

    # page.current_window.resize_to(1280, 800)
end

Before('@login') do 
    @usuario = {email:'lgstvoliveira@gmail.com', senha:'102030'}

    @login_page.acessa
    @login_page.logar(@usuario[:email], @usuario[:senha])

end

After('@logout') do    
    @nav.sair 
end
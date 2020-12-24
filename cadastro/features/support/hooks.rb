Before do
    @nav = Navbar.new
    @cadastro_page = CadastroPage.new
    @tarefas_page = TarefasPage.new
end

After('@logout') do    
    @nav.sair 
end

class Navbar
    include Capybara::DSL

    def sair
        find('.navbar a[href*=dropdown]').click
        find('.navbar a[href$=logout]').click
        sleep 2 
    end     
end
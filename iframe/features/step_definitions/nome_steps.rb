Dado("que o qa esteja na home") do
  visit("http://demo.automationtesting.in/Register.html")
  @pagina_que_contem_iframe = IframePage.new
end

Quando("ele acessar a pagina de iframe") do 
    @pagina_que_contem_iframe.menu_iframe.acessar_menu_iframe
end

Então("ele podera inserir um nome {string}") do |nome|

    @pagina_que_contem_iframe.name do |frame|
        frame.name_label.set nome
    end

end
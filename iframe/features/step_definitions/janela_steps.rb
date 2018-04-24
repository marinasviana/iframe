Dado("que um QA está navegando em uma pagina") do
    visit("http://demo.automationtesting.in/Register.html")
    @nova_janela = Windows.new
    @nova_janela.menu_windows.acessar_menu_windows
end
  
Quando("ele clicar em um botão abrir uma nova guia") do
    @nova_janela.nova_guia.click    
end

Quando("ele clicar em um botão nova janela") do
    @nova_janela.nova_janela.click
end

Quando("ele clicar em um botão multiplas guias") do
    @nova_janela.multiplas_guias.click
end


  
Então("ele deve poder manipular os elemento dessa nova guia") do
    @nova_janela.mudar_foco_para_nova_guia
end

Então("ele deve poder manipular os elemento dessa nova janela") do
    @nova_janela.mudar_foco_para_nova_janela
end
  
Então("ele deve poder manipular os elemento dessas novas guias") do
    @nova_janela.mudar_foco_para_nova_guia_multiplas
end



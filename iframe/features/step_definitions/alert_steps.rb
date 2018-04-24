Dado("que um QA está navegando na pagina de alerta") do
    visit("http://demo.automationtesting.in/Register.html")
    @nalerta = Alerta.new
    @nalerta.menu_alerta.acessar_menu_alert
end

Quando("ele clicar em um botão de alerta") do
    @nalerta.novo_alerta.click
end

Então("ele deve poder manipular o alerta") do
    @nalerta.mudar_foco_para_novo_alerta
end

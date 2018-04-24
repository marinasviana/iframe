require_relative 'menu_section.rb'

class Alerta < SitePrism::Page
    element :novo_alerta, :xpath, "/html/body/div[1]/div/div/div/div[1]/ul/li[1]/a"

    element :btn_alerta, :xpath, "//*[@id='OKTab']/button"

    section :menu_alerta, MenuSection, '.nav'

    def mudar_foco_para_novo_alerta
        #win = window_opened_by {btn_alerta}
        #within_window win do
        #   ok.click
        #end
        btn_alerta.click
        sleep 2
        page.driver.browser.switch_to.alert.accept
        sleep 3
    end

end
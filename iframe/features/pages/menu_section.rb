class MenuSection < SitePrism::Section
    element :switch, :xpath,  "//*[@id='header']/nav/div/div[2]/ul/li[4]"
    element :iframe,  :xpath, "//*[@id='header']/nav/div/div[2]/ul/li[4]/ul/li[3]"

    def acessar_menu_iframe
        switch.click
        iframe.click
    end
end


class MenuSection < SitePrism::Section

    element :switch,  :xpath, "//*[@id='header']/nav/div/div[2]/ul/li[4]"
    element :alert,   :xpath, "//*[@id='header']/nav/div/div[2]/ul/li[4]/ul/li[1]/a"
    element :iframe,  :xpath, "//*[@id='header']/nav/div/div[2]/ul/li[4]/ul/li[3]"
    element :windows, :xpath, "/html/body/header/nav/div/div[2]/ul/li[4]/ul/li[2]/a"
    
    

    def acessar_menu_iframe
        switch.click
        iframe.click
    end

    def acessar_menu_windows
        switch.click
        windows.click 
    end

    def acessar_menu_alert
        switch.click
        alert.click
    end
end




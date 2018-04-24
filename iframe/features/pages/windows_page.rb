class Windows < SitePrism::Page
    element :nova_guia, :xpath, "/html/body/div[1]/div/div/div/div[1]/ul/li[1]/a"
    element :nova_janela, :xpath, "/html/body/div[1]/div/div/div/div[1]/ul/li[2]/a"
    element :multiplas_guias, :xpath, "/html/body/div[1]/div/div/div/div[1]/ul/li[3]/a"

    element :btn_nova_guia, :xpath, "//*[@id='Tabbed']/a/button"
    element :btn_nova_janela, :xpath, "//*[@id='Seperate']/button"
    element :btn_multiplas_guias, :xpath, "//*[@id='Multiple']/button"

    section :menu_windows, MenuSection, '.nav'

    element :contato, :xpath, "//*[@id='container']/header/div/div/div[2]/ul/li[4]/a"

    def mudar_foco_para_nova_guia
        new_window = window_opened_by { btn_nova_guia.click}
        within_window new_window do 
                contato.click
                page.driver.browser.close
        end
    end

    def mudar_foco_para_nova_guia_multiplas
        btn_multiplas_guias.click

        new_window = switch_to_window { title == 'Sakinalium | Home' }
        within_window new_window do
            contato.click
            switch_to_window { title == 'Frames & windows' }
            
        end
    end

    def mudar_foco_para_nova_janela
        new_window = window_opened_by { btn_nova_janela.click}
        within_window new_window do 
                contato.click
        end
    end

    

end
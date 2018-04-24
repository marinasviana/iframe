class Sakinalium < SitePrism::Page
    element :contato, :xpath, "//*[@id='container']/header/div/div/div[2]/ul/li[4]/a"

    def acessar_contato
        contato.click
    end

end
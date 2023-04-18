class HomePage < SitePrism::Page

    element :campo_busca, '#twotabsearchtextbox' #mapeando elementos da pagina
    element :botao_submit, '#nav-search-submit-button'
    
    def setUrl(url)
        set_url '#{url}'
    end

    def busca(busca)
        campo_busca.click #executa ações nos elementos acima
        campo_busca.set busca
        botao_submit.click
    end

    def wait_until_modal
        page.has_css?('#nav-logo-sprites')
     end
end

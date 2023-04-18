class Valida < SitePrism::Page #herda classe Page do SitePrism

    set_url '/'
    element :resultado_item, '.a-text-normal'

    def buscaResult()
        resultado_item.set Sresultado
    end
end
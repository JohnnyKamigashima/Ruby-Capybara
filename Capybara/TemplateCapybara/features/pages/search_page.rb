class SearchPage < SitePrism::Page
  include RSpec::Matchers
  set_url "/"
  element :campo_busca, "#twotabsearchtextbox" #mapeando elementos da pagina
  element :botao_submit, "#nav-search-submit-button"
  element :resultado, ".s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16"
  elements :item_selecionado, ".a-link-normal.s-underline-text.s-underline-link-text.s-link-style.a-text-normal" #mapeando elementos da pagina
  element :botao_adicionar, "#add-to-cart-button"
  element :botao_carrinho, "#nav-cart"
  element :item_carrinho, "#sc-active-cart"
  element :adicionado_sucesso, "#NATC_SMART_WAGON_CONF_MSG_SUCCESS"

  def busca(busca)
    # wait_until_campo_busca_visible
    campo_busca.click #executa ações nos elementos acima
    campo_busca.set busca
    botao_submit.click
  end

  def valida(produto)
    # wait_until_resultado_visible
    expect(resultado.text).to match(/#{produto}/i)
  end

  def seleciona_item()
    item_selecionado[0].click #executa ações nos elementos acima
    botao_adicionar.click
  end

  def ver_carrinho()
    botao_carrinho.click
  end

  def valida_adicao()
    expect(adicionado_sucesso).to have_content("Adicionado ao carrinho")
  end

  def item_no_carrinho(item)
    expect(item_carrinho).to have_content(item)
    # expect(page).to have_content(item)
    # expect(item_carrinho).to match(/#{item}/i)
  end
end

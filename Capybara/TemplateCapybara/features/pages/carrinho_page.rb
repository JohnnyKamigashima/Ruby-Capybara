class CarrinhoPage < SitePrism::Page
  include RSpec::Matchers
  set_url "/"
  element :subtotal_carrinho, "#sc-subtotal-label-buybox"

  def subtotal_carrinho_item(items)
    expect(subtotal_carrinho).to have_content("#{items} itens")
  end
end

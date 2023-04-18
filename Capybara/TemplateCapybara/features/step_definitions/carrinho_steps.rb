Dado("que eu tenha carrinho com {string}") do |string|
  # Visita a pagina primeiro
  search.load
  # Procura item
  search.busca(string)
  # Adiciona item no carrinho
  search.seleciona_item()
end

Quando("eu verificar o cart.") do
  # Verifica carrinho
  search.ver_carrinho()
end

Então("devo encontrar {string}.") do |string|
  # Valida item no carrinho
  search.item_no_carrinho(string)
end

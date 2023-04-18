Dado("que eu visite o site da Amazon") do
  search.load #le a pagina
end

Quando("eu procurar e adicionar no carrinho <{string}>") do |string|
  search.busca(string) # Procura item
  search.seleciona_item() # Adiciona item no carrinho
  search.valida_adicao() #verifica se adicionou
end

Quando("procurar e adicionar no carrinho <{string}>") do |string|
  search.busca(string) # Procura item
  search.seleciona_item() # Adiciona item no carrinho
  search.valida_adicao() #verifica se adicionou
end

Quando("procurar e adicionar tambem no carrinho <{string}>") do |string|
  search.busca(string) # Procura item
  search.seleciona_item() # Adiciona item no carrinho
  search.valida_adicao() #verifica se adicionou
end

Entao("vejo que ha tres itens") do
  search.ver_carrinho() #Verifica carrinho
  carrinho.subtotal_carrinho_item(3) #Verifica se há 3 itens no carrinho
end

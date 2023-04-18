Dado("que eu visite o site") do
  home.load
end

Quando("eu procurar por {string}") do |busca|
  home.busca(busca)
end

Entao("ver na lista {string}") do |produto|
  home.valida(produto)
end

#language: pt
@tres_itens_carrinho
Funcionalidade: Testar carrinhos com varios itens
Para fazer compras
O cliente
Quer adicionar 3 itens no carrinho 

Contexto:
Dado que eu visite o site da Amazon

Cenario: Adicionar tres itens ao carrinho
Quando eu procurar e adicionar no carrinho <"Fone de ouvido JBL">
E procurar e adicionar no carrinho <"Barbeador Philips">
E procurar e adicionar tambem no carrinho <"Cafeteira Walita">
Entao vejo que ha tres itens

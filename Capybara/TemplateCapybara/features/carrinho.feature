#language: pt
@carrinho
Funcionalidade: Adicionar tres itens ao carrinho

Cenario: Como usuário, adicionar itens ao carrinho de compras.
Dado que eu tenha carrinho com <item>
Quando eu verificar o cart.
Então devo encontrar <item>.

Exemplos:

|item                                                        | 
|'Fone de Ouvido Bluetooth Sem Fio Hero5, TWS Airbuds'       |
|'Barraca 4 Lugares IGLU - 9035'                             |
|'Cafeteira Espresso, Barista, 220V, Prata, Tres, 3 Corações'|

#language: pt
@search
Funcionalidade: Procurar fones de ouvido

Cenario: Como usuário, quero buscar fones de ouvido e obter resultados.
Dado que eu visite o site 
Quando eu procurar por <procura>
Entao ver na lista <produto>

Exemplos:

|procura			|produto  	|
|'earphone JBL'     |'JBL'		|
|'shaver philips'   |'philips'	|
|'air fryer mondial'|'mondial'	|
|'iphone'           |'iphone'	|
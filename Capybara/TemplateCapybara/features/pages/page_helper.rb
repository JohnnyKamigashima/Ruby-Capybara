#Require todos arquivos da pasta pages que contenham final pages.rb
Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each { |file| require file }

module Pages
  def home
    @home ||= HomePage.new #||= verifica que ja foi instanciada, caso não ele instancia
  end

  def search
    @buscar ||= SearchPage.new #||= verifica que ja foi instanciada, caso não ele instancia
  end

  def carrinho
    @carrinho ||= CarrinhoPage.new #||= verifica que ja foi instanciada, caso não ele instancia
  end
end

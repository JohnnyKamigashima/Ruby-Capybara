#Require todos arquivos da pasta pages que contenham final pages.rb
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each {|file| require file} 

module Pages
    def home
        @buscar ||= HomePage.new #||= verifica que ja foi instanciada, caso não ele instancia
    end

end
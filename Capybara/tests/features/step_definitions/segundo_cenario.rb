Dado('eu tenha {int} laranjas.') do |laranjas|
    # Dado('eu tenha {float} laranjas.') do |float|
        @total =  laranjas
    end
    
    Quando('eu como {int} laranjas.') do |comido|
    # Quando('eu como {float} laranjas.') do |float|
      @restou = @total - comido
    end
    
    Então('eu vejo quantas sobraram.') do
      expect(@restou).to eq 18
      puts @restou
    end

    Quando('eu compro {int} laranjas.') do |laranjas|
        # Quando('eu compro {float} laranjas.') do |float|
          @comprado = laranjas
          @resultado = @total + @comprado
        end
        
        Então('eu vejo quantas eu tenho.') do
          expect(@resultado).to eq 15
        end
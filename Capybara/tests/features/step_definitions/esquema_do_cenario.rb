Quando('eu multiplico minhas {int} pelo {int}.') do |laranjas, valor|
    # Quando('eu multiplico minhas {int} pelo {float}.') do |int, float|
    # Quando('eu multiplico minhas {float} pelo {int}.') do |float, int|
    # Quando('eu multiplico minhas {float} pelo {float}.') do |float, float2|
      @multiplicacao = laranjas * valor
    end
    
    Então('eu vejo qual {int} da multiplicação.') do |resultado|
    # Então('eu vejo qual {float} da multiplicação.') do |float|
      expect(@multiplicacao).to eq resultado
    end
    
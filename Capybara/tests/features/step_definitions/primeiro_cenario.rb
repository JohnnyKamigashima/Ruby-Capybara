Quando('eu somar {int}+{int}') do |val1, val2|
    # Quando('eu somar {int}+{float}') do |int, float|
    # Quando('eu somar {float}+{int}') do |float, int|
    # Quando('eu somar {float}+{float}') do |float, float2|
      @soma = val1 + val2
    end
    
    Então('o resultado tem que ser {int}') do |resultado|
    # Então('o resultado tem que ser {float}') do |float|
    expect(@soma).to eq resultado
    end
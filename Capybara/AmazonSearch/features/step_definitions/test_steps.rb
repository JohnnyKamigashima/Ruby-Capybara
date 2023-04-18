
Dado('que eu visite o site') do
    visit '/'
end

Quando('eu procurar por {string}') do |busca|
    home.busca(busca)
end

Entao('ver na lista {string}') do |produto|
    home.wait_until_modal()
    expect(first('.a-text-normal', text: /#{produto}/i))
  end

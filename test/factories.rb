FactoryBot.define do
  factory :manutencao do
    carro
    data Date.today
    sequence :mecanico { |n| "Mecânico #{n}" }
  end
  
  factory :carro do
    patio
    sequence :fabricante { |n| "Fabricante #{n}" }
    sequence :nome { |n| "Carro #{n}" }
    sequence :modelo { |n| "Modelo #{n}" }
    sequence :ano
    sequence :anoModelo
  end

  factory :patio do
    unidade
    sequence :nome { |n| "Patio #{n}" }
  end

  factory :unidade do
    sequence :nome { |n| "Unidade #{n}" }
    lat -23.641706
    long -46.7299793
    totalCarros 0
  end
end

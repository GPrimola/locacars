FactoryBot.define do
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

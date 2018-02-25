FactoryBot.define do
  factory :unidade do
    sequence :nome { |n| "Unidade #{n}" }
    lat -23.641706
    long -46.7299793
    totalCarros 0
  end
end

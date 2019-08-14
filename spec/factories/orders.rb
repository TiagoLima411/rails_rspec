FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Pedido número - #{n}" }
    customer
    #association :customer, factory: :customer # <= sobreescrevendo association
  end
end

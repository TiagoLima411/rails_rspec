require 'rails_helper'

RSpec.describe Customer, type: :model do
  #fixtures :all

  #it 'Create a Customer' do
    #customer = customers(:tiago)

    #expect(customer.full_name).to eq("Sr. Tiago Lima")
  #end

  it '#full_name - Sobreescrevendo Atributo!' do
    customer = create(:customer, name: "Tiago de Lima")
    expect(customer.full_name).to eq("Sr. Tiago de Lima")
  end

  it '#herança' do
    customer = create(:customer_vip)
    expect(customer.vip).to eq(true)
  end

  it '#full_name' do
    customer = create(:user) #ou create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it { expect{ create(:customer) }.to change {Customer.all.size}.by(1) }
end

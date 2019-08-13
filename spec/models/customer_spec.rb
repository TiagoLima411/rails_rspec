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

  it '#Usando o attributes_for' do
    attrs = attributes_for(:customer)
    #attrs1 = attributes_for(:customer_vip)
    #attrs2 = attributes_for(:customer_default)
    #puts attrs
    #puts attrs1
    #puts attrs2
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it 'Atributo Transitório' do
    customer = create(:customer_default, upcased: true)
    expect(customer.name.upcase).to eq(customer.name)
  end

  it { expect{ create(:customer) }.to change {Customer.all.size}.by(1) }
end

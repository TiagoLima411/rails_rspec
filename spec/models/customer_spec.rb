require 'rails_helper'

RSpec.describe Customer, type: :model do
  #fixtures :all

  #it 'Create a Customer' do
    #customer = customers(:tiago)

    #expect(customer.full_name).to eq("Sr. Tiago Lima")
  #end

  it '#full_name' do
    customer = create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it { expect{ create(:customer) }.to change {Customer.all.size}.by(1) }
end

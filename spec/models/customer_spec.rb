require 'rails_helper'

RSpec.describe Customer, type: :model do
  #fixtures :all

  #it 'Create a Customer' do
    #customer = customers(:tiago)

    #expect(customer.full_name).to eq("Sr. Tiago Lima")
  #end

  it 'Create a Customer' do
    customer = create(:customer)
    expect(customer.full_name).to eq("Sr. Tiago Lima")
  end
end

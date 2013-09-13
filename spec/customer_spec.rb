require 'customer'

describe Customer do 
  let(:customer) {Customer.new('Amanda', 'Addington', '07741231234')}

  it 'has a first name' do
    expect(customer.first_name).to eq 'Amanda'
  end

  it 'has a first name' do
    expect(customer.last_name).to eq 'Addington'
  end

   it 'has a phone number' do
    expect(customer.phone).to eq '07741231234'
  end

  it 'displays a full name' do
    expect(customer.fullname).to eq 'Amanda Addington'
  end

  it 'places an order' do
    takeaway = double :takeaway
    takeaway.should_receive(:create_order).with(customer,'hawaiian', 2)
    customer.order_food(takeaway,'hawaiian', 2)
  end


  
end
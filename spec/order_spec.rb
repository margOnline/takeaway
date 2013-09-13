require 'order'

describe Order do 
  let(:customer) {Customer.new('John','Smith', '1234567890')}
  let(:order) {Order.new(customer,['hawaiian',2])}

  it 'determines when the order will be ready for collection' do
    expect(order.compute_pick_up_time).to eq order.order_time + (60 *60)
  end

  it 'calculates the amount due' do
    expect(order.amount_due).to eq 25.90
  end






  
end
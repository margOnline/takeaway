require 'order'

describe Order do 
  
  let(:dish) {double :dish, :name => 'hawaiian', :price => 12.95}
  let(:customer) {double :customer, :phone => '01234567890'}
  let(:items) {[dish,2]}
  let(:order) {Order.new(customer,items)}
  let(:line1) {double :orderLine, :total => 19.90}
  let(:lines) {[line1]}

  it 'determines when the order will be ready for collection' do
    expect(order.compute_pick_up_time).to eq order.received_time + (60 *60)
  end

  it 'creates order lines' do
    expect(order.create_line).to eq [line1]
  end

  it 'calculates the amount due' do 
    expect(order.calculate_amount_due).to eq 19.90
  end

  it 'texts the time the order will be ready to the customer' do
    expect(order.text_pick_up_time_to(customer)).to be_true
  end
  
end
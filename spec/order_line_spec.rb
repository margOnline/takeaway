require 'order_line'

describe OrderLine do

  let(:item) { double :dish,:name => 'hawaiian', :price => 12.95 }
  let(:order_line) { OrderLine.new(item,2) }

  it 'has a quantity' do
    expect(order_line.quantity).to eq 2
  end

  it 'looks up the price for the item' do
    expect(item.price).to eq 12.95
  end

  it 'computes the line total' do
    expect(order_line.total).to eq 25.90
  end

end
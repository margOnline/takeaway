require 'order_line'

describe OrderLine do
  let(:hawaiian) { double :dish,:name => 'hawaiian', :price => 12.95 }
  let(:order_line) { OrderLine.new(hawaiian,2) }

  it 'has a quantity' do
    expect(order_line.quantity).to eq 2
  end

  it 'looks up the price for the item' do
    expect(order_line.price).to eq 12.95
  end

  it 'computes line_total' do
    expect(order_line.total).to eq 25.90
  end


end
require 'order_line'

describe Order_line do
  let(:order_line) {Order_line.new('hawaiian', 2)}

  it 'has a item' do
    expect(order_line.item).to eq 'hawaiian'
  end

  it 'has a quantity' do
    expect(order_line.quantity).to eq 2
  end

  it 'computes subtotal' do
    expect(order_line.subtotal).to eq 25.90
  end


end
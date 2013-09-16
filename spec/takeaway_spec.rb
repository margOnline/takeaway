require 'takeaway'

describe Takeaway do
  let(:dish1) {double :dish, :name=>'hawaiian', :price => 12.95}
  let(:dish2) {double :dish, :name=>'margherita', :price => 9.95}
  let(:takeaway) {Takeaway.new('Jen\'s Pizzeria')}
  let(:order) {[[dish1,1], [dish2, 2]]}

  it 'has a name' do
    expect(takeaway.name).to eq 'Jen\'s Pizzeria'
  end

  it 'can accept an order' do
    expect(takeaway.accept(order)).to eq [order]
  end

end

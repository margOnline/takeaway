require 'takeaway'

describe Takeaway do
  let(:dish1) {double :dish, :name=>'hawaiian', :price => 12.95}
  let(:dish2) {double :dish, :name=>'margherita', :price => 9.95}
  let(:customer) { double :customer,:first_name => 'Marco', :last_name => 'Polo', :phone => 1234567890 }
  let(:takeaway) {Takeaway.new('Jen\'s Pizzeria',[dish1,dish2])}

  it 'has a name' do
    expect(takeaway.name).to eq 'Jen\'s Pizzeria'
  end

  it 'has a menu of dishes' do
    expect(takeaway.menu).to eq [dish1,dish2]
  end

  it 'takes orders' do
    items = [[dish1,2],[dish2,3]]
    order = double :order, :customer => customer, :items => items
    takeaway.create_order(customer,order)
    expect(order.customer).to eq customer
    expect(order.items).to eq [[dish1,2], [dish2, 3]]
  end

end

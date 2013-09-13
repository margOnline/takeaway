require 'takeaway'

describe Takeaway do
  let(:dish1) {Dish.new('hawaiian',12.95)}
  let(:dish2) {Dish.new('margherita', 11.95)}
  let(:takeaway) {Takeaway.new('Jen\'s Pizzeria',[dish1, dish2])}

  it 'has a name' do
    expect(takeaway.name).to eq 'Jen\'s Pizzeria'
  end

  it 'creates a menu of dishes' do
    expect(takeaway.menu).to eq [dish1, dish2]
  end

  it 'create an order when customer\'s places one' do
    customer = double :customer
    expect(takeaway.create_order(customer)).to be_a Order
  end






  end
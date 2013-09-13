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

  # it 'create an order when customer places one' do
  #   customer = double :customer
  #   expect(takeaway.create_order_line()).to be_a Order_line
  # end

it 'creates an order_line' do
    takeaway = double :takeaway
    takeaway.should_receive(:create_order_line).with('hawaiian', 2)
    customer.order_food(takeaway,'hawaiian', 2)
  end

  it 'creates an order' do
    takeaway = double :takeaway
    order_line1 = double :order_line
    order_line2 = double :order_line
    order_items = [order_line1,order_line2]
    takeaway.should_receive(:create_order).with(customer,order_lines)
    customer.order_food(takeaway,'hawaiian', 2)
  end




  end
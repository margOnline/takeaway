require 'dish'

describe Dish do 
  let(:dish) {Dish.new('Hawaiian Pizza',12.95)}

  it 'has a name' do
    expect(dish.name).to eq 'Hawaiian Pizza'
  end

   it 'has a price' do
    expect(dish.price).to eq 12.95
  end



  
end
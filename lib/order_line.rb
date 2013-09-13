require 'dish'

class OrderLine

  attr_reader :quantity, :item

  def initialize(item, quantity)
    @item, @quantity = item, quantity
  end

  def price
    @item.price
  end

  def total
    @item.price * @quantity
  end


end
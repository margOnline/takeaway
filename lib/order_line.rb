require 'dish'

class OrderLine

  attr_reader :item, :quantity

  def initialize(item, quantity)
    @item, @quantity = item, quantity
  end

  def total
    @item.price * @quantity
  end


end

class OrderLine

  attr_reader :item, :quantity
  attr_accessor :total

  def initialize(item, quantity)
    @item, @quantity = item, quantity
  end

  def total
    @item.price * @quantity
  end

end

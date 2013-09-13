class Order_line

  attr_reader :quantity, :item

  def initialize(item, quantity)
    @quantity, @item = quantity,item
  end

  def subtotal
    @item.price * @quantity
  end


end
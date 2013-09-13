require_relative 'customer'
require_relative 'order_line'

class Order

  attr_reader :order_time, :pick_up_time, :order_items

  def initialize(customer, order_items)
    @order_items = order_items
    @order_time = Time.new
  end

  def compute_pick_up_time
    @pick_up_time = @order_time + (60 *60)
    text_pick_up(@pick_up_time)
  end

  def amount_due
    @order_items.inject |total,item,qty| do
      item.price * 2     
    end
    total
  end

end
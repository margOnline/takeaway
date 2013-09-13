require_relative 'customer'
require_relative 'dish'

class Takeaway

  attr_reader :name
  attr_accessor :menu, :order_items


  def initialize(name, menu=[])
    @name = name
    @menu = menu
  end

  def create_order_line (food,quantity)
    @order_items = Order_line.new(food, quantity) } 
  end

  def create_order
    Order.new(customer, @order_items)
  end
    


end
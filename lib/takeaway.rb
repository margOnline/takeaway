require_relative 'customer'
require_relative 'dish'

class Takeaway

  attr_reader :name
  attr_accessor :menu, :order_items


  def initialize(name, menu=[])
    @name = name
    @menu = menu
  end

  def create_order(customer,food_items)
    @order_items = food_items.map {|line| Order_line.new } 
    order = Order.new(customer,@order_items)
  end

    


end
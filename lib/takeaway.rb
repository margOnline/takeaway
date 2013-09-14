require_relative 'customer'
require_relative 'order'

class Takeaway

  attr_reader :name
  attr_accessor :menu, :order_items

  def initialize(name, menu)
    @name = name
    @menu = menu
  end

  def create_order(customer, items)
    Order.new(customer, @items)
  end
end
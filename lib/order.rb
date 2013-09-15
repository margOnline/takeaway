require_relative 'customer'
require_relative 'order_line'
require_relative 'text'

class Order

  attr_reader :received_time, :customer
  attr_accessor :total, :items

  def initialize(customer, items)
    @total = 0
    @items = items
    @customer = customer
    @received_time = Time.new
    create_order_line
    text_pick_up_time
  end

  def create_order_line
    lines = @items.map { |item| OrderLine.new(item[0].name,item[1]) }
    calculate_amount_due_from lines
  end

  def compute_pick_up_time
    @received_time + (60*60)
  end

  def text_pick_up_time_to customer
    pick_up_time = compute_pick_up_time
    message = 'Thank you! Your order was placed and will be delivered before #{pick_up_time}.'
    text.send(customer, message)
  end

  def calculate_amount_due_from lines
    @total = lines.inject { |total,line| total + line.total}
  end

  

end
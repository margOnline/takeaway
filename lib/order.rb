
class Order

  attr_reader :received_time, :customer
  attr_accessor :total, :items, :lines

  def initialize(customer, items)
    @total = 0
    @items = items
    @customer = customer
    @received_time = Time.new
    create_order_line
    # text_pick_up_time
    calculate_amount_due_from lines
  end

  def create_order_line
    line = []
    i = 0
    @lines = @items.each {|item| while i < @items.length do 
        line << OrderLine.new(item[0], item[1]) 
        i += 1
      end
      }
  end

  def amount_due 
    calculate_amount_due_from @lines
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
    @total = 0
    lines.each { |line| @total += (line[0].price * line[1])}
    @total = @total.round(2)
  end

  

end
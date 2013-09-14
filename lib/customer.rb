require 'takeaway'

class Customer

  attr_reader :first_name
  attr_accessor :last_name, :phone

  def initialize(first_name, last_name, phone)
    @first_name, @last_name, @phone = first_name, last_name, phone
  end

  def fullname  
    @first_name + ' ' + @last_name   
  end

  def order_food(takeaway,dish, qty)
    takeaway.create_order(self,dish, qty)
  end




end
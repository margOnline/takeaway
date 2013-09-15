require 'takeaway'

class Customer

  attr_reader :first_name
  attr_accessor :last_name, :phone, :address

  def initialize(first_name, last_name, phone,address)
    @first_name, @last_name, @phone, @address = first_name, last_name, phone, address
  end

  def fullname  
    @first_name + ' ' + @last_name   
  end

  def order_food(takeaway,dish, qty)
    takeaway.create_order(self,dish, qty)
  end




end
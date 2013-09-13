class Customer

  attr_reader :first_name, :full_name
  attr_accessor :last_name, :phone

  def initialize(first_name, last_name, phone)
    @first_name, @last_name, @phone = first_name, last_name, phone
  end

  def fullname  
    @first_name + ' ' + @last_name   
  end

end
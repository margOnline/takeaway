
class Takeaway

  attr_reader :name
  attr_accessor :orders

  def initialize(name)
    @name = name
    @orders = []
  end

  def accept order
    @orders << order
  end
end

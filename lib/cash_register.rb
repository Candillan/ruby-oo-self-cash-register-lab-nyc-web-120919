require 'pry'
class CashRegister
  def initialize(discount=nil)
    @total = 0
    if discount
      @discount = discount
    end
  end
  
  attr_accessor :total, :discount
  
  def add_item(title, price, quantity=nil)
    @prev_total = @total
    @total += price
  end
  
  
  def void
    @total = @prev_total
    "You have removed #{items.pop} from the cart."
  
  def apply_discount
  end
end


[1, 2, 3, 4, 5].pop #=> 5
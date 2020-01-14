require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  @@total = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items << title
  end
  
  def apply_discount
    @total -= (@discount / 100.0) * @total
    # "There is no discount to apply."
    "After the discount, the total comes to $#{@total.to_i}."
    
  end
  
  def items
    title.all
    
  end
  
  def void_last_transaction
    @last_transaction.clear.all
  end
  
end

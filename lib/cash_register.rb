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
    quantity.times do
      @items << title
    end
    # binding.pry
    self.last_transaction= price * quantity
  end

  def apply_discount
    if @discount != 0
       @total -= (@discount / 100.0) * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  # def items
  #   @items << "tomato" << "tomato"
  #
  # end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end

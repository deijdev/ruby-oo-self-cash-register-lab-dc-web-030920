require 'pry'

class CashRegister
  
attr_accessor :total, :discount, :price, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity

  end

  def add_item(title, price, quantity = 1)
    if title = title
      @total += price * quantity
    end
  end

  def apply_discount
    @total =  @total - (@total * discount * 0.01)
    @total
    if discount != 0
    "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items << title
    @items
    binding.pry
  end
end

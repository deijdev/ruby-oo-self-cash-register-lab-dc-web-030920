
require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price + quantity
    quantitiy.times(@items << title)
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price

     #return @total to now be 0.0
        if :items.length == 0
           return cash_register.total = 0
        end
        #return @total  
    end

end

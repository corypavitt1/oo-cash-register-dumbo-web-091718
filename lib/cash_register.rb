
require "pry"
class CashRegister



attr_accessor :total, :items, :discount
attr_reader :final_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end



def add_item(title, price, c = 1)
if c > 1
  p = @items.length
  p == 1
  @items.fill(title, p..c)
  @total = @total += price * c
else
  items << title
 @total = @total += price * c
 @final_transaction = price
end
#I must add this to the array three times equal to the spec file .
#itmes.push

end
def apply_discount
  if @total == 0
    return "There is no discount to apply."
else
  @total = @total - (@total * 0.2)
return "After the discount, the total comes to $#{@total.to_i}."
end


end


def self.items
#find only the items our user has added.
@items
end

def void_last_transaction
@total -= @final_transaction
end


end

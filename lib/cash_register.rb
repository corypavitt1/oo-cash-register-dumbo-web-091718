require "pry"
class CashRegister

attr_accessor :total, :items, :discount, :last_transaction
attr_reader

@@items = []

# @@total = 0
    def initialize(discount = nil )
      @total = 0
      @discount = discount #might have this wrong?
      @items = []
    end

  #optional quantity
  #need to get the total price from item and it's quantity.
  # quantity x price will be added to total.
  # 4 milk jugs at $5.00 = 20
  #returns THE TOTAL AMOUNT OF @TOTAL.
    def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
    @@items << item
    @items << item
    end
      @last_transaction = price * quantity
    def items
      @items
    end

    # def self.total
    #   @@total
    # end

      #apply the optional discount to the @total .
      #subtract discount from total
      def apply_discount
    if @discount
      percent = @discount.to_f / 100
      @total -= @total * percent
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
end

def void_last_transaction
  @total -= last_transaction

end


end

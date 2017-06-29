# class CashRegister

# 	attr_accessor :total, :discount, :items

# 	@@items = []

# 	def initialize(employee_discount=0)
# 		@total = 0
# 		@discount = employee_discount

# 	end

# 	def add_item(title, price, quantity = 1)
# 		self.total += price * quantity
# 		self.total + @total
# 	end

# 	def apply_discount

# 		if self.discount == 0
# 			return "There is no discount to apply."
# 		else
# 			discount_amount = (100 - self.discount.to_f) / 100
# 			self.total = self.total * discount_amount
# 			return "After the discount, the total comes to $#{self.total.to_i}."
# 		end

# 	end

# 	def items
# 		@@items << @total
# 	end

# 	def void_last_transaction

# 	end


# end

class CashRegister

attr_reader :discount, :items
attr_accessor :total, :last_transaction



	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity=1)
		self.total += price * quantity
		# @items << quantity.times do |title|

		quantity.times do 
			@items << title
		end

		self.last_transaction = price * quantity

	end

	def apply_discount
		if self.discount != 0
			self.total = self.total - (self.total * self.discount / 100.0)
			return "After the discount, the total comes to $#{self.total.to_i}."
		else 
			return "There is no discount to apply."
		end
	end

	def void_last_transaction
		# delete the last transaction from the total. 
		self.total -= self.last_transaction
	end

end































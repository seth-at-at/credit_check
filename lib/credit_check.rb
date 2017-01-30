class Validator
	def initialize(card_number = "4929735477250543")
		@card_number = card_number.split("")
	end

	def card_array
		@card_doubled = @card_number.map.with_index do |num, index|
			if index == 0
				num.to_i * 2
			elsif index % 2 == 0
				num.to_i * 2
			else
				num.to_i
			end
		end
	end

	def card_sum
		@card_sum = card_array.map do |num|
			if num > 9
				num -= 9
			else
				num
			end
		end
	end

	def credit_check
		credit_check = card_sum.reduce(:+)
		if credit_check % 10 == 0
			"Card is Valid"
		else
			"Card is Invalid"
		end
	end
end
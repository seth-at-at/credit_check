require_relative'test_helper'
require'./lib/credit_check'

class ValidaterTest < Minitest::Test
	def setup 
		@card = Validator.new("4929735477250543")
	end

	def test_can_check_credit_card
		assert_equal "Card is Valid", @card.credit_check
	end
end
require "minitest/autorun"
require_relative "coin.rb"

class TestCoin < Minitest::Test

	def test_if_hash_is_class
		amount = 1
		assert_equal(Hash, changer(amount).class)
	end

    def test_if_penny_equals_1
    	amount = 1
        assert_equal({:penny => 1}, changer(amount))
    end

    def test_if_nickel_equals_5
    	amount = 5
    	assert_equal({:nickel => 1}, changer(amount))
    end

    def test_if_dime_equals_10
    	amount = 10
    	assert_equal({:dime => 1}, changer(amount))
    end

    def test_if_quarter_equals_25
    	amount = 25
    	assert_equal({:quarter => 1}, changer(amount))
    end

    def test_if_use_of_more_than_one_coin_works
    	amount = 26
    	assert_equal({:quarter => 1, :penny => 1}, changer(amount))
    end

    def test_if_all_coins_work_together
    	amount = 41
    	assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 1}, changer(amount))
    end

    def test_if_2_quarters_can_be_used
    	amount = 50
    	assert_equal({:quarter => 2}, changer(amount))
    end

    def test_if_2_coins_and_1_other_coin_can_work
    	amount = 55
    	assert_equal({:quarter => 2, :nickel => 1}, changer(amount))
    end
end
require "minitest/autorun"
require_relative "coin.rb"

class TestCoin < Minitest::Test

    def test_if_penny_equals_1
        assert_equal({:penny => 1}, changer(1))
    end

    def test_if_nickel_equals_5
    	assert_equal({:nickel => 5}, changer(5))
    end

end
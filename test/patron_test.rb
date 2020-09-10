require "minitest/autorun"
require "minitest/pride"
require "./lib/exhibit"
require "./lib/patron"

class PatronTest < Minitest::Test

  def test_patron_attributes
    patron_1 = Patron.new("Bob", 20)
    assert_equal "Bob", patron_1.name
    assert_equal 20, patron_1.spending_money
    assert_equal [], patron_1.interests
  end
  
end

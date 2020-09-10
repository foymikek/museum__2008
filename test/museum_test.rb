require "minitest/autorun"
require "minitest/pride"
require "./lib/exhibit"
require "./lib/patron"
require "./lib/museum"

class MuseumTest < Minitest::Test

  def test_museum_attributes
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal "Denver Museum of Nature and Science", dmns.name
    assert_equal [], dmns.exhibits
  end

end

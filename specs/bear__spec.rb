require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test


  def setup

    @yogi = Bear.new("yogi", "grizzly")
    @rupert = Bear.new("rupert", "brown")
    @paddington = Bear.new("paddington", "teddy")

  end

  def test_bear_name
    assert_equal("yogi", @yogi.name)
  end

  def test_bear_type
    assert_equal("grizzly", @yogi.bear_type)
  end

  def test_bear_roar
    assert_equal("Roar!", @yogi.bear_roar)
  end

  def test_food_count
    assert_equal(0, @yogi.food_count)
  end

end

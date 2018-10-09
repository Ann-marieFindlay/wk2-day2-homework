require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test


  def setup
    @yogi = Bear.new("yogi", "grizzly")
    @nemo = Fish.new("Nemo")
    @jaws = Fish.new("Jaws")
    @amazon = River.new("Amazon", [@nemo, @jaws])
  end

  def test_river_name
    assert_equal("Amazon", @amazon.name)
  end

  def test_fish_count
    assert_equal(2, @amazon.fish_count)
  end

  def test_bear_stealing_fish
    @amazon.bear_stealing_fish(@yogi)
    assert_equal(1, @amazon.fish_count)
    assert_equal(1, @yogi.food_count)
  end

end

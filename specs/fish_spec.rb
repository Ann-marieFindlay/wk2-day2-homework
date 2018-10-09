require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @nemo = Fish.new("Nemo")
    @jaws = Fish.new("Jaws")
  end

  def test_fish_name
    assert_equal("Nemo", @nemo.name)
  end

end

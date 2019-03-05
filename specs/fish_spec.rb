require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test
  def setup
    @fish1 = Fish.new("Harriet")
    @fish2 = Fish.new("William")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Enrique")
  end

  def test_get_fish_name
    result = @fish3.get_fish_name
    assert_equal("Jeff", result)
  end

end

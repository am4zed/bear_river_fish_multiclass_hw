require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../river')

class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new("Harriet")
    @fish2 = Fish.new("William")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Enrique")

    @fish_in_river = [@fish1.name, @fish2.name, @fish3.name, @fish4.name]
    @river1 = River.new("River Seine", @fish_in_river)

  end

  def test_get_fish
    assert_equal(["Harriet", "William", "Jeff", "Enrique"], @river1.fish_in_river)
  end

  def test_fish_gets_fished_from_river
    @fish_in_river.fish_gets_fished_from_river(@fish1)
    assert_equal(["William", "Jeff", "Enrique"], @fish_in_river)
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../river')
require_relative('../bear')


class TestBear < MiniTest::Test
  def setup
    @bear1 = Bear.new("Pudsey", "Fuzzy")
    @river1 = River.new("River Seine", @fish)
    @fish1 = Fish.new("Harriet")
    @fish2 = Fish.new("William")
    @fish3 = Fish.new("Jeff")
    @fish4 = Fish.new("Enrique")
    @fish_in_river = [@fish1.name, @fish2.name, @fish3.name, @fish4.name]
  end

  def test_get_bear_name
    result = @bear1.get_bear_name
    assert_equal("Pudsey", result)
  end

  def test_get_bear_type
    result = @bear1.get_bear_type
    assert_equal("Fuzzy", result)
  end

  def test_get_stomach_contents
    result = @bear1.get_stomach_contents
    assert_equal([], result)
  end

  def test_go_fishing
    result = @bear1.go_fishing(@fish1)
    assert_equal(["Harriet"], @bear1.get_stomach_contents)
    assert_equal(["William", "Jeff", "Enrique"], @fish_in_river)
  end
end

class River
  attr_reader :name, :fish_in_river

  def initialize(name, fish_in_river)
    @name = name
    @fish_in_river = fish_in_river
  end

  def fish_gets_fished_from_river(fish)
    @fish_in_river.delete(fish)
  end

end

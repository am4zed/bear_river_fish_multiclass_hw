class Fish
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def get_fish_name
    return @name
  end
end

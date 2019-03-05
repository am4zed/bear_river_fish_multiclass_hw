class Bear
  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def get_bear_name
    return @name
  end

  def get_bear_type
    return @type
  end

  def get_stomach_contents
    return @stomach
  end

  def go_fishing(fish)
    @stomach << fish.name
    @fish_in_river.delete(fish)
  end



end

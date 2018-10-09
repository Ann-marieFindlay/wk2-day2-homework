class Bear

  attr_reader :name, :bear_type
  attr_accessor :bear_stomach

  def initialize(name, bear_type)
    @name = name
    @bear_type = bear_type
    @bear_stomach = []
  end

  def bear_roar
    return "Roar!"
  end


def food_count
  @bear_stomach.length
end

end

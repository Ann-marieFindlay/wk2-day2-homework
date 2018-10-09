class River

  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end


  def fish_count
    @fishes.length
  end

  def bear_stealing_fish(bear)
    fish = @fishes.pop()
    bear.bear_stomach << fish
  end


end

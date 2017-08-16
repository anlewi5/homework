class Centaur

  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @position = :standing
    @cranky_count = 0
  end

  def shoot
    @cranky_count += 1
    if @cranky_count >=3|| @position != :standing
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @cranky_count += 1
    if @cranky_count >=3 || @position != :standing
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def sleep
    if @position == :standing
      "NO!"
    else
      @cranky_count = 0
      "zzz"
    end
  end

  def drink_potion
    if @position != :standing
      "NO!"
    elsif @cranky_count < 3
      "I'm sick!"
    else
      @cranky_count = 0
    end
  end

  def lay_down
    @position = :laying
  end

  def stand_up
    @position = :standing
  end

  def cranky?
    @cranky_count >=3
  end

  def standing?
    @position == :standing
  end

  def laying?
    @position == :laying
  end

end

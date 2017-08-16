class Unicorn

  attr_reader :name, :color

  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    @color == "white"
  end

  def say(sparkle_stuff)
    "**;* #{sparkle_stuff} **;*"
  end

end

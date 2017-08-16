class Wizard

  attr_reader :name, :rested

  def initialize(name, bearded: true)
    @name = name
    @rested = true
    @spell_count = 0
    @bearded = bearded
  end

  def bearded?
    @bearded
  end

  def incantation(words)
    "sudo #{words}"
  end

  def cast(spell)
    @spell_count += 1
    "#{spell.upcase}!"
  end

  def rested?
    @rested = false if @spell_count >=3
    @rested
  end

end

class Ogre

  attr_reader :name, :home, :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter_ogre
    swing_at(human) if human.encounter_counter % 3 == 0
  end

  def swing_at(human)
    @swings += 1
    human.swung_at
  end

  def apologize(human)
    human.accept_apology
  end

end

class Human

  attr_reader :encounter_counter, :ogre_swings

  def initialize
    @encounter_counter = 0
    @ogre_swings = 0
  end

  def name
    'Jane'
  end

  def encounter_ogre
    @encounter_counter += 1
  end

  def notices_ogre?
    @encounter_counter % 3 == 0 unless @encounter_counter == 0
  end

  def swung_at
      @ogre_swings += 1
  end

  def knocked_out?
    @ogre_swings % 2 == 0 unless @ogre_swings == 0
  end

  def accept_apology
    @encounter_counter = 0
    @ogre_swings = 0
  end

end

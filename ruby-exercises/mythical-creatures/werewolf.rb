class Werewolf

  attr_reader :name, :location, :ate

  def initialize(name, location = "London")
    @name = name
    @location = location
    @form = :human
    @hungy = false
    @ate = false
  end

  def human?
    @form == :human
  end

  def wolf?
    @form == :wolf
  end

  def hungry?
    @hungry == true
  end

  def change!
    if @form == :human
      @form = :wolf
      @hungry = true
    else
      @form = :human
    end
  end

  def eat(victim)
    if @form == :wolf
      victim.status = :dead
      @hungry = false
      @ate = true
    end
  end

end

class Victim
  attr_accessor :status

  def initialize(name)
    @name = name
    @status = :alive
  end

end

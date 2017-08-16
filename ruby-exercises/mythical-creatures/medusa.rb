class Medusa

  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def statues
    @statues
  end

  def stare(victim)
    if statues.count < 3
      victim.stoned
      @statues.push(victim)
    else
      #unstone first!
      statues.first.stoned
      victim.stoned
      @statues.push(victim)
    end
  end

end

class Person

  attr_reader :name, :stoned

  def initialize(name, stoned = false)
    @name = name
    @stoned = stoned
  end

  def stoned
    if @stoned == false
      @stoned = true
    else
      @stoned = false
    end
  end

  def stoned?
    @stoned
  end

end

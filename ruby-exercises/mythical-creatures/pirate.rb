class Pirate

  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @curse = false
    @curse_count = 0
    @booty = 0
  end

  def commit_heinous_act
    @curse_count += 1
  end

  def cursed?
    @curse = true if @curse_count >= 3
    @curse
  end

  def rob_ship
    @booty += 100
  end

end

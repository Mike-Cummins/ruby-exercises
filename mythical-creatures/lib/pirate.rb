class Pirate
  attr_reader :name, :job, :cursed, :booty
  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @no_nos = 0
    @booty = 0
  end
  def cursed?
    @cursed
  end
  def commit_heinous_act
    @no_nos += 1
    if @no_nos > 2
      @cursed = true
    end
  end
  def booty?
    @booty
  end
  def rob_ship
    @booty += 100
  end
end

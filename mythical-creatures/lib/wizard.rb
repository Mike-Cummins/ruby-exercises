class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells = 0
  end
  def bearded?
    @bearded
  end
  def incantation(saying)
    "sudo" + " " + saying
  end
  def rested?
    @rested
  end
  def cast
    @spells += 1
    if @spells > 2
      @rested = false
    end
    "MAGIC MISSLE!"
  end
end

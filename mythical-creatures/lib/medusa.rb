class Medusa
  attr_reader :name
  def initialize(name)
    @name = name
    @statues = []
  end
  def statues
    @statues
  end
  def stare(person)
    person.seen
    @statues << person
    if @statues.count > 3
      @statues[0].unstoned
      @statues.shift
    end
  end
end

class Person
  attr_reader :name
  def initialize(name)
    @name = name
    @stoned = false
  end
  def stoned?
    @stoned
  end
  def seen
    @stoned = true
  end
  def unstoned
    @stoned = false
  end
end

class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def quota
    @quota += @experience/2
  end

  def deliver(x, y)
    @experience += (y - x)
    @earnings = (y - x) * (0.25)
      if (y - x) < @quota
        @earnings -= 2
      elsif (y - x) > @quota
        @earnings += (y - x - @quota) * (0.50)
      end
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} and I've earned #{@earnings} so far!"
  end

end

tyler = Paperboy.new('Tyler')
tyler.deliver(1, 56)
tyler.quota
p tyler.report

tyler.deliver(56, 140)
tyler.quota
p tyler.report

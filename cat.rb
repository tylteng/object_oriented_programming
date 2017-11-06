class Cat
  def initialize(name)
    @name = name
    @preferred_food = 0
    @meal_time = 0
  end

  def preferred_food(food)
    @preferred_food = food
  end

  def eats_at(time)
    @meal_time = time
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end
end


sergio = Cat.new('Sergio')
sergio.preferred_food('pizza')
sergio.eats_at('11 AM')

garfield = Cat.new('Garfield')
garfield.preferred_food('anchovies')
garfield.eats_at('2 PM')

p sergio.meow
p garfield.meow

class Player
  def initialize(name)
    @name = name
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins%10 == 0
      level_up
    end
  end

  def do_battle
    @health_points -= 1
    if @health_points < 1
      @lives -= 1
      @health_points += 10
    else @lives < 1
      retart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def shout
    "My name is #{@name}. I have #{@gold_coins} gp, #{@health_points} hp, and #{@lives} lives."
  end
end

tyler = Player.new('Tyler')
p tyler.shout

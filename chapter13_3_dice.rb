class Die
  def initialize
    # I'll just roll the die, though we could do something else
    # if we wanted to, such as setting the die to have 6 showing.
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
  def cheat num
    if num > 0 && num < 7
      @number_showing = num
    else
      roll
    end
  end
end

puts Die.new.cheat(88)
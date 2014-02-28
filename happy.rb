class HappyNumber
  attr_reader :repeats

  def initialize(number)
    @happiness = false
    @repeats   = []

    solve_happiness(number.to_i)
  end

  def is_happy?
    return true if @happiness
    @happiness
  end

  private

  def solve_happiness(number)
    if check_repeats(number)
      return
    else
      sum = 0
      length(number).times do |index|
        sum += square(number.to_s[index])
      end
      @repeats << number
      if sum == 1
        @happiness = true
      else
        solve_happiness(sum)
      end
    end
  end

  def length(number)
    number.to_s.length    
  end

  def square(digit)
    digit.to_i * digit.to_i    
  end

  def check_repeats(number)
    @repeats.include?(number)    
  end

end

num = HappyNumber.new(ARGV[0])
p num.repeats
puts num.is_happy?
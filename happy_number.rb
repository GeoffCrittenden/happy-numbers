class HappyNumber
  attr_reader :sums

  def initialize(number)
    @happiness = false
    @sums      = []

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
      @sums << number
      sum = sum_squared_digits(number)
      if sum == 1
        @happiness = true
      else
        solve_happiness(sum)
      end
    end
  end

  def check_repeats(number)
    @sums.include?(number)    
  end

  def sum_squared_digits(number, sum = 0)
    length(number).times do |index|
      sum += square(number.to_s[index])
    end
    sum
  end

  def length(number)
    number.to_s.length    
  end

  def square(digit)
    digit.to_i * digit.to_i    
  end

end

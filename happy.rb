require_relative 'happy_number'

if ARGV[0]
  num = HappyNumber.new(ARGV[0])
  p num.repeats
  puts num.is_happy?
else
  numbers = []
  100.times do |number| 
    num = HappyNumber.new(number + 1)
    if num.is_happy?
      numbers << number + 1
    end
  end
  p numbers
end
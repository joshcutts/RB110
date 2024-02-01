# after_midnight2.rb

=begin
PROBLEM:
input - time in hours:minutes as a string
output - time in minutes from midnight

TWO METHODS
explicit - don't use date or time methods
range should be between 0 - 1439
0 should return 0
24 should return 0 for both before and after midnight (reaminder after modulo 24)
implicit - 

EXAMPLES:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

DATA STRUCTURE:

ALGORITHM:


=end

def after_midnight(time)
  hours, minutes = time.split(":").map(&:to_i)
  final = (hours % 24) * 60 + minutes
end

def before_midnight(time)
  hours, minutes = time.split(":").map(&:to_i)
  final = ((24 - hours) % 24) * 60 - minutes
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
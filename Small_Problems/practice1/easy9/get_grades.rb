=begin

Write a method that determines the mean (average) of the three scores
passed to it, and returns the letter value associated with that grade.


get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"


PROBLEM:
input: 3 integers (scores)
output: letter grade associated with average of the given scores

EXAMPLES:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

DATA STRUCTURE:
average
if or case

ALGORITHM:
- calculate the average
  - take sum of the 3 integer values & divide by 3
- if score is greater than 90
  - return "A"

=end


# def get_grade(score1, score2, score3)
#   avg = [score1.to_f, score2.to_f, score3.to_f].sum / 3
#   if avg >= 90
#     "A"
#   elsif avg >= 80
#     "B"
#   elsif avg >= 70
#     "C"
#   elsif avg >= 60
#     "D"
#   else
#     "F"
#   end
# end

def get_grade(score1, score2, score3)
  avg = (score1 + score2 + score3)/3
  case avg
  when 90..100 then "A"
  when 80..90 then "B"
  when 70..80 then "C"
  when 60..70 then "D"
  else "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
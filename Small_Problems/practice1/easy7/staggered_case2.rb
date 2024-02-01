
def staggered_case(str)
  result = ""
  i = 0
  str.each_char do |char|
    if i.even?
      result << char.upcase
    else
      result << char.downcase
    end
    i += 1 if char.match?(/[A-Za-z]/)
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
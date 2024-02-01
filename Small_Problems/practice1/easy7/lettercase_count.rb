def letter_case_count(string)
  count_hash = {}
  count_hash[:lowercase] = string.scan(/[a-z]/).length
  count_hash[:uppercase] = string.scan(/[A-Z]/).length
  count_hash[:neither] = string.scan(/[^a-zA-Z]/).length
  count_hash
end



def letter_case_count(string)
  counts = {:lowercase => 0, :uppercase => 0, :neither => 0}
  string.each_char do |char|
    if !!char.match(/[a-z]/)
      counts[:lowercase] += 1
    elsif !!char.match(/[A-Z]/)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


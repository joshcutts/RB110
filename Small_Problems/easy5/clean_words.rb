# clean_words.rb

=begin

PROBLEM:
input: string (all lowercase) with non-alpha and alpha characters
output: return string with all non-alpha characters replaced by spaces, no consecutive spaces

explicit:
implicit:

EXAMPLES:
cleanup("---what's my +*& line?") == ' what s my line '

DATA STRUCTURE

ALGORITM:


=end

def cleanup(string)
  string.gsub(/[^a-z]/, " ").squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '
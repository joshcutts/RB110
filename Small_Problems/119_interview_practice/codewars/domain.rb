=begin

Test.assert_equals(domain_name("http://google.com"), "google")
Test.assert_equals(domain_name("http://google.co.jp"), "google")
Test.assert_equals(domain_name("www.xakep.ru"), "xakep")
Test.assert_equals(domain_name("https://youtube.com"), "youtube")


PROBLEM:
input: string which is a url
output: domain name

EXAMPPLES:
Test.assert_equals(domain_name("http://google.com"), "google")
Test.assert_equals(domain_name("http://google.co.jp"), "google")
Test.assert_equals(domain_name("www.xakep.ru"), "xakep")
Test.assert_equals(domain_name("https://youtube.com"), "youtube")

DATA STRUCTURE:
array split on dividors (: / .)

ALGORITHM:
- split the string into an array split on (: / .)
- create new array not including http https www
- return first element of the array

=end


def domain_name(str)
  str.gsub!("/", "")
  words = str.split(/[:.]/)
  stripped_words = words.select {|word| !%w(http https www).include?(word)}
  stripped_words[0]
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"

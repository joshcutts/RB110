def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end


p is_anagram('Creative', "Reactive") == true #The word Creative is an anagram of Reactive')
p is_anagram("foefet", "toffee") == true #The word foefet is an anagram of toffee')
p is_anagram("Buckethead", "DeathCubeK") == true #The word Buckethead is an anagram of DeathCubeK')
p is_anagram("Twoo", "WooT") == true #The word Twoo is an anagram of WooT')
p is_anagram("dumble", "bumble") == false #Characters do not match for test case dumble, bumble')
p is_anagram("ound", "round") == false #Missing characters for test case ound, round')
p is_anagram("apple", "pale") == false #Same letters, but different count')
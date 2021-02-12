def first_anagram?(string_1,string_2)
  anagrams = string_1.split("").permutation.to_a

  anagrams.each do |anagram|
    return true if anagram.join("") == string_2
  end
  false
end


p first_anagram?('cat','dog')
p first_anagram?('cat','tac')
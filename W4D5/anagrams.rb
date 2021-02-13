def first_anagram?(string_1,string_2)
  anagrams = string_1.split("").permutation.to_a

  anagrams.each do |anagram|
    return true if anagram.join("") == string_2
  end
  false
end

#O(n!)
p first_anagram?('cat','dog')
p first_anagram?('cat','tac')

#O(n^2)
def second_anagram?(string_1,string_2)
  word_2 = string_2.split("")
  string_1.each_char do |char|
    if !word_2.find_index(char).nil?
      word_2.delete(char)
    end
  end
  word_2.empty?
end

p second_anagram?('cat','dog')
p second_anagram?('cat','tac')
# O(n log(n))
def third_anagram?(string_1,string_2)
  string_1.chars.sort.join == string_2.chars.sort.join
end

p third_anagram?('cat','dog')
p third_anagram?('cat','tac')

def fourth_anagram?(string_1,string_2)
  hash_1 = Hash.new(0)
  hash_2 = Hash.new(0)
  string_1.each_char { |char| hash_1[char] += 1}
  string_2.each_char { |char| hash_2[char] += 1}

  hash_1 == hash_2
end

p fourth_anagram?('cat','dog')
p fourth_anagram?('cat','tac')
#O(n)

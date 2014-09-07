
def palindrome? word
  word == word.reverse
end

def permutations string
  # iterative permutation function
  permutations_array = []
  unused = string.chars
  string.each_char.with_index do |char, index|
    all_chars = string.chars
    all_chars.delete_at(index)
    used = [char]
    unused = all_chars
    until unused.empty?
      
    end
  end
end

permutations "test"

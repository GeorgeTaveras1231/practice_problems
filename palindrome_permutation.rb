
def palindrome? word
  word == word.reverse
end

def palindrome_permutations? word
  index = 0
  permutation_list = permutations(word)
  while index < permutation_list.length
    perm = permutation_list[index]
    return true if palindrome?(perm)
    index += 1 
  end
  false
end

def permutations string
  # iterative permutation function
  permutations_array = []
  index = 0
  while index < string.length
    all_chars = string.chars
    current_char = [all_chars.delete_at(index)]
    jindex = 0
    permutation = current_char + all_chars
    while jindex < all_chars.length
      permutations_array.push(permutation.join)
      permutation = current_char + rotate(all_chars)
      jindex += 1
    end
    index += 1
  end
  permutations_array
end

def rotate array
  array.unshift(array.pop)
end

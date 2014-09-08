
def palindrome? word
  word == word.reverse
end

def permutation_palindrome? word
  # solution using parity map
  index = 0
  parity_map = Hash.new(false)
  while index < word.length
    char = word[index]
    # if found an even number of times, it will be true otherwise, false
    parity_map[char] = !parity_map[char] 
    index += 1
  end
  # number of odd numbered characters can only be one
  # for example civic => only v occurs an odd number of times
  parity_map.select { |_,status| status }.count <= 1
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

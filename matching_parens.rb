# Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
# Write a function that, given a sentence like the above, along with the position of an opening parenthesis, finds the corresponding closing parenthesis.
# Example: if the example string above is input with the number 10 (position of the first parenthesis), the output should be 79 (position of the last parenthesis).

def parens_closer(starting_index, string)
  return nil unless string[starting_index] == '('
  open_parens = 0 
  string[starting_index..string.length].each_char.with_index(starting_index) do |char, index|
    if char == '('
      open_parens += 1
    elsif char == ')'
      open_parens -= 1
    end
    return index if open_parens == 0
  end
  nil
end

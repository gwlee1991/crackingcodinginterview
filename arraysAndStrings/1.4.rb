# Palindrome Permutation: Given a string, write a function 
# to check if it is a permutation of a palindrome. A 
# palindrome is a word or phrase that is the same forwards 
# and backwards. A permutation is a rearrangement of letters. 
# The palindrome does not need to be limited to just dictionary words.

# assumption: whitespace doesn't alter the palidrome
# ex: catac == ca tac
# for a palindrome to work if string is even in length, every letter needs
# to be even in number(needs to be in pairs) and if odd in length,
# all letters need to be even in numbers except for 1 letter that has a 
# single letter count.
# deleting whitespace takes O(n) => this step could've been taken out and replaced
# with an extra condition to check whether the character is " ".
# iterating through the chars array and counting each letter into the letters hash
# also takes O(n) time.
# finally check the letter count takes O(n) time. Total time comes out to O(3n) and
# by removing the constant factor this function takes O(n) time.
# only space we use is the str, letters, and count variable. So it takes O(n) space.

def palindrome?(string)
  str = string.delete(' ')
  letters = {}
  str.chars.each do |ch|
    if letters[ch]
      letters[ch] += 1
    else
      letters[ch] = 1
    end
  end
  if str.length.even?
    return false if letters.values.any? {|x| !x.even?}
  else
    count = 0
    letters.values.each do |value|
      if value % 2 != 0
        return false if value % 2 != 1
        count += 1
      end
    end
    return false if count > 1
  end

  true
end

p palindrome?('hib aih')

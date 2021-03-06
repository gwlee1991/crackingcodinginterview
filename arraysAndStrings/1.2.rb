# Check Permutation: Given two strings,
# write a method to decide if one is a
# permutation of the other.


# using the built in sort is on average O(nlog n).
# sort for both strings would result is O(2nlog n) which is O(nlog n)
# by removing the constant factor
# space complexity is O(1).

def isPermutation1?(str1, str2)
  return false if str1.length != str2.length
  str1.chars.sort.join == str2.chars.sort.join
end

# also possible to use ascii to count letters
# we iterate through first array which happens in O(n) time.
# then we iterate through the second array which happens in O(n) time as well.
# the sum of these two operations would be O(2n) and by dropping the constant factor
# we get O(n) time.
# as for space, it uses, O(1) space since we only need to keep track of the letters array.

def isPermutation2?(str1, str2)
  return false if str1.length != str2.length
  letters = Array.new(128)
  str1.each_char do |ch|
    index = ch.ord
    if letters[index]
      letters[index] += 1
    else
      letters[index] = 1
    end
  end

  str2.each_char do |ch|
    index = ch.ord
    if letters[index]
      letters[index] -= 1
      if letters[index] < 0
        return false
      end
    else
      return false
    end
  end

  true
end

p isPermutation2?('ddog', 'ggod')

#using a counter hash 0(n) time

def isPermutation3?(str1, str2)
  return false if str1.length != str2.length
  letters = Hash.new(0)
  str1.each_char do |ch|
    letters[ch] += 1
  end

  str2.each_char do |ch2|
    letters[ch2] -=1
    return false if letters[ch2] < 0
  end
  true
end

# Is Unique: Implement an algorithm to determine 
# if a string has all unique characters. 
# What if you cannot use additional data structures?


# bruteforce
# need to iterate through the string twice.
# time complexity is O(n2)
# space complexity is O(1)

def isUnique1(str)
  str.each_char.with_index do |ch, i|
    str[i + 1..-1].each_char do |char|
      return false if ch == char
    end
  end
  true
end

# on average, sort is O(nlog n).
# iterating through the sorted array once so O(n)
# total would be O(nlog n + n) but since we take only the biggest factor
# time complexity is O(nlog n)
# space complexity is O(n) because of the sorting algorithm.
def isUnique2(str)
  sortedString = str.chars.sort.join
  sortedString.each_char.with_index do |ch, i|
    next if i == sortedString.length - 1
    return false if ch == sortedString[i + 1]
  end
  true
end

# last solution involves using ascii table to create a hash table.
# assuming that there are 128 characters, we create an array with 128 elements initalized with nil
# we iterate through the str once which is O(n) and also the look up for unique[asc] is O(1).
# So time complexity is O(n) and space complexity is O(1) because we only need to keep unique array and asc.

def isUnique3(str)
  unique = Array.new(128)
  i = 0
  while i < str.length
    asc = str[i].ord
    return false if unique[asc]
    unique[asc] = true
    i += 1
  end

  p unique
  true
end

p isUnique3('dog')
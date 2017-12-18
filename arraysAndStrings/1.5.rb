# One Away: There are three types of edits that
# can be performed on strings: insert a character,
# remove a character, or replace a character.
# Given two strings, write a function to check
# if they are one edit (or zero edits) away.

# if the length difference of two strings is bigger than 1, it is always false
# if the length difference is one, we need to check if the longer string contains
# all the letters in the shorter string
# if the length is the same, only 1 letter should be different

def one_away(str1, str2)
  return false if (str1.length - str2.length).abs > 1

  if str1.length > str2.length
    longer, shorter = str1, str2
  else
    longer, shorter = str2, str1
  end

  if (longer.length - shorter.length) == 1
    # brute force O(n^2)
    # longer_chars = longer.chars
    # shorter.chars.each do |ch| #n2
    #   return false if longer_chars.delete(ch).nil?
    # end
    # return true

    #optimization1 O(nlogn) because of sort
    longerChars = longer.chars.sort
    shorterChars = shorter.chars.sort
    longer_index = 0
    shorter_index = 0
    diff = 0
    until longer_index == longer.length - 1 || shorter_index == shorter.length - 1
      if longerChars[longer_index] != shorterChars[shorter_index]
        diff += 1
        longer_index += 1
        return false if diff > 1
      else
        longer_index += 1
        shorter_index += 1
      end
    end
  else #3n => n
    longer_count = {}
    shorter_count = {}
    longer.chars.each do |ch| #n
      if longer_count[ch]
        longer_count[ch] += 1
      else
        longer_count[ch] = 1
      end
    end

    shorter.chars.each do |ch| #n
      if shorter_count[ch]
        shorter_count[ch] += 1
      else
        shorter_count[ch] = 1
      end
    end

    diff = 0

    longer_count.each do |key, value| #n
      diff += 1 if shorter_count[key].nil? || shorter_count[key] != value
    end

    return false if diff > 1
  end

  true
end

p one_away('pale', 'pal')

#optimization2 O(n) because of the 3 iterations
def one_away1(str1, str2)
  return false if (str1.length - str2.length).abs > 1

  if str1.length > str2.length
    longer, shorter = str1, str2
  else
    longer, shorter = str2, str1
  end

  longer_counter = Hash.new(0)

  longer.chars.each do |ch|
    longer_counter[ch] += 1
  end

  shorter.chars.each do |ch|
    longer_counter[ch] -= 1
  end
  diff = 0

  longer_counter.values.each do |val|
    if str1.length == str2.length
      diff += val
    else
      diff += val.abs
    end
  end

  return false if diff > 1
  true
end

p one_away1("pale", "ple") == true 
p one_away1("pales", "pale") == true 
p one_away1("pale", "bale") == true 
p one_away1("pale", "bae") == false

p one_away1('aaxnn', 'aahnn') == true
p one_away1('aaxxnn', 'aahhnn') == false
p one_away1('ann', 'aah') == false
p one_away1('edg', 'dg') == true
p one_away1('palindromieee', 'ialindrompeee') == true
p one_away1('palindromieee', 'palidromiee') == false
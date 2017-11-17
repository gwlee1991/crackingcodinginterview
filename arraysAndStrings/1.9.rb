# StringRotation:Assume you have a method isSubstring
# which checks if one word is a substring of another. 
# Given two strings, s1 and s2, write code to check 
# if s2 is a rotation of s1 using only one call to 
# isSubstring (e.g., "waterbottle" is a rotation of" erbottlewat").


def isSubstring (s1, s2)
  return false unless s1.length == s2.length
  return true if s1 == s2
  s1_chars = s1.chars
  s2_chars = s2.chars

  i = 0
  while i < s1.length
    return true if s1_chars == s2.chars
    s1_chars.rotate!
    i += 1
  end
  false
end


p isSubstring('rat', 'tda')
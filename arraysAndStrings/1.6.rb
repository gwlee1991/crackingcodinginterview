# String Compression: Implement a method to perform 
# basic string compression using the counts of repeated 
# characters. For example, the string aabcccccaaa 
# would become a2blc5a3. If the "compressed" string 
# would not become smaller than the original string, 
# your method should return the original string. You 
# can assume the string has only uppercase and lowercase 
# letters (a - z).

# just need to iterate through the string once so it takes
# O(n) time and O(1) space.


def string_compression (string) 
  compressed = ""

  count = 1
  for i in 0..(string.length - 1)
    if i == 0
      compressed += string[i]
      next
    end

    if compressed[-1] == string[i]
      count += 1
    else
      compressed += count.to_s
      count = 1
      compressed += string[i]
    end

    if i == string.length - 1
      compressed += count.to_s
    end
  end

  compressed.length > string.length ? string : compressed
end


p string_compression('aabcccccaaa')
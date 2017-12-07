def longest_distinct(len, str)
  chars = str.chars.uniq

  longest = 0

  i = 0
  while i < chars.length - 1

    j = i + 1
    while j < chars.length
      new_string = ""
      str.chars.each do |ch|
        if ch == chars[i] || ch == chars[j]
          new_string += ch
        end
      end
      
      if distinct?(new_string) and new_string.length > longest
        longest = new_string.length
      end

      j += 1
    end

    i += 1
  end

  longest
end


def distinct?(str)
  str.chars.each_with_index do |ch, i|
    return false if ch == str[i + 1]
  end
  true
end

p longest_distinct(10, 'beabeefeab')
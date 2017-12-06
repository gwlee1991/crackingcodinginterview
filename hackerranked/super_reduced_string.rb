def super_reduced_string(str)
  reduced_str = str
  reduced = true

  while reduced == true
    reduced = false
    temp = ""
    skip = nil
    i = 0 
    while i < reduced_str.length
      if reduced_str[i] != reduced_str[i + 1] && i != skip
        temp += reduced_str[i]
      elsif reduced_str[i] == reduced_str[i + 1] && i != skip
        skip = i + 1
        reduced = true
      end
      i += 1
    end
    reduced_str = temp
  end

  reduced_str == "" ? "Empty String" : reduced_str
end

p super_reduced_string('aaabccddd')
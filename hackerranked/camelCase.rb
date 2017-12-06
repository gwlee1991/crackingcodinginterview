def count_words_in_camelCase(string)
  return 0 if string.length == 0 

  count = 1
  capitals = ("A".."Z").to_a
  string.chars.each {|ch| count += 1 if capitals.include?(ch) }
  count
end

p count_words_in_camelCase("saveChangesInTheEditor")
# URLify: Write a method to replace all spaces 
# in a string with '%20  You may assume that 
# the string has sufficient space at the end to hold 
# the additional characters, and that you are given 
# the "true" length of the string. (Note: if implementing 
# in Java, please use a character array so that you can 
# perform this operation in place.)


# iterate through the chars array and if the current char is
# not a whitespace we copy it onto the url string and if it is
# a whitespace, we check the char that comes before and after.
# if the whitespace is between actual characters, we replace the
# whitespace with a "%20", if not, we just move on.
# to create the chars array, the chars method should iterate through
# the string which takes O(n) time. After that we iterate through
# the created chars array once which also takes O(n) time.
# The total comes to O(2n) but by removing the constant factor
# the whole process takes O(n) time.
# as for space it takes O(1) because it only needs to keep the
# chars, url, prev, and after variables without having to create
# any other variables

def URLify1(str, length)
  chars = str.chars
  url = ""
  chars.each.with_index do |ch, i|
    if ch != " "
      url += ch
    else
      prev = url[-3..-1]
      url += "%20" unless prev == "%20"
    end
  end
  url
end


# simplified version of URLify using Ruby's enumerables.
def URLify2(str, length)
  words = str.split(' ')
  words.join('%20')
end

p URLify1("Mr  John  Smith    ", 13)
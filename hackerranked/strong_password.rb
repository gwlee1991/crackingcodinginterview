# Its length is at least 6.
# It contains at least one digit.
# It contains at least one lowercase English character.
# It contains at least one uppercase English character.
# It contains at least one special character. The special characters are: !@#$%^&*()-+

numbers = "0123456789"
lower_case = "abcdefghijklmnopqrstuvwxyz"
upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
special_characters = "!@#$%^&*()-+"

# input will be n, the length of the string, and pw, the typed in password.
# should return how many digits must be added to be considered a strong password.

def strong_password(n, pw)
  return 6 - n if n <= 3

  numbers = "0123456789"
  lower_case = "abcdefghijklmnopqrstuvwxyz"
  upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  special_characters = "!@#$%^&*()-+"

  counts = [0, 0, 0, 0] #numbers, lower_case, upper_case, specials counts

  pw.chars.each do |ch|
    if numbers.include?(ch)
      counts[0] += 1
    elsif lower_case.include?(ch)
      counts[1] += 1
    elsif upper_case.include?(ch)
      counts[2] += 1
    elsif special_characters.include?(ch)
      counts[3] += 1
    end
  end

  zero = 0
  counts.each do |num|
    if num == 0
      zero += 1
    end
  end

  if n >= 6
    return zero
  elsif n < 6 && n > 3
    if (n + zero) >= 6
      return zero
    else
      return 6 - n
    end
  end
end

puts strong_password(6, "#2abcd")
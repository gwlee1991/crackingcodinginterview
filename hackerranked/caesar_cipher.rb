def caesar_cipher(string, key)
  ciphered = ""
  small_case = ("a".."z").to_a
  cap_case = ("A".."Z").to_a

  string.each_char do |ch|
    if small_case.include?(ch)
      i = small_case.index(ch)
      ciphered += small_case[((i + key)%small_case.length)]
    elsif cap_case.include?(ch)
      i = cap_case.index(ch)
      ciphered += cap_case[((i + key)%small_case.length)]
    else
      ciphered += ch
    end
  end
  ciphered
end

p caesar_cipher("middle-Outz", 2)
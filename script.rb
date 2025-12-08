def caesar_cipher(input_string, shift)
  shift %= 26
  LOWER_CASE_START = "a".ord
  LOWER_CASE_END = "z".ord
  UPPER_CASE_START = "A".ord
  UPPER_CASE_END = "Z".ord
  output = ""
  input_string.each_char do |char|
    ascii_char = char.ord
    if ascii_char.between?(LOWER_CASE_START, LOWER_CASE_END)
      # The % 26 ensures, that the definition works if the shift goes higher than z
      output += (((ascii_char - LOWER_CASE_START) + shift) % 26 + LOWER_CASE_START).chr
    elsif ascii_char.between?(UPPER_CASE_START, UPPER_CASE_END)
     output += (((ascii_char - UPPER_CASE_START) + shift) % 26 + UPPER_CASE_START).chr
    else
      output += ascii_char.chr
    end
  end
  output
end
caesar_cipher("What a string!", 5)
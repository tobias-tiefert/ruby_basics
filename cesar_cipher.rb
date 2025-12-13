def caesar_cipher(input_string, shift)
  output = ''
  input_string.each_char do |char|
    baseline = find_baseline(char)
    output += !baseline ? char : shift_char(char, shift, baseline)
  end
  output
end

def find_baseline(char)
  if char.ord.between?('a'.ord, 'z'.ord)
    'a'.ord
  elsif char.ord.between?('A'.ord, 'Z'.ord)
    'A'.ord
  end
end

def shift_char(char, shift, baseline)
  (((char.ord - baseline) + shift) % 26 + baseline).chr
end

puts caesar_cipher('What a string!', 5)

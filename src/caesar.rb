def caesar(message, shift_factor)
  shifted = message.chars.map { |char| shift(char, shift_factor) }.join
end

def shift(char, shift_factor)
  return char if char == " "
  raise Exception.new "Not a letter: #{char}" if !letter?(char)

  shift_factor = shift_factor % 26
  base = char == char.upcase ? "A" : "a"
  (((char.ord - base.ord + shift_factor % 26) % 26) + base.ord).chr
end

def letter?(char)
  char =~ /[A-Za-z]/
end

message = "The Caesar Cipher is unsafe and should not be used"
enciphered = caesar(message, 5)
deciphered = caesar(enciphered, -5)

p message
p enciphered
p deciphered
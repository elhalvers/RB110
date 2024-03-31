words = 'the flintstones rock'

def titleize(string)
  caps_array = string.split.map { |word| word.capitalize }
  caps_array.join(' ')
end


p titleize(words)

names = %w(Sally Joe Lisa Henry)

loop do
  puts names.shift
  break if names.empty?
end

p names

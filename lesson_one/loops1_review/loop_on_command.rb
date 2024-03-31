loop do
  puts 'Should I stoop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Incorrect answer. Plese answer "yes".'
end

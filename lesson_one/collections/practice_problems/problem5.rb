flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#flinstones.each_with_index do |name, index|
#  if name.start_with?('Be')
#     p index
#  end
#end

p flinstones.index { |element| element.start_with?('Be') }




flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flinstones.map! { |name| name[0, 3] }

p flinstones

flinstones = %w(Fred Barney Wilma Betty Pebbles BamBam)

family_hash = {}

flinstones.each_with_index { |person, index| family_hash[person] = index }

p family_hash



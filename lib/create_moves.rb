# frozen_string_literal: true

require 'json'
require 'pry-byebug'


ATHLETE_DATA_PATH = Rails.root.join('data', 'athletes')

# athlete_dirs = Dir.glob("#{DATA_PATH}/**").select { |f| File.directory?(f) }

# ad = athlete_dirs.first

# move_files = Dir.children(ad)

# move_files.each do |move_file|
  # JSON.parse(move_file)
  # binding.pry

# end


ATHLETE_DATA_PATH.children.each do |athlete_path|
  x = athlete_path.children.map do |file_path|
    JSON.parse(File.read(file_path))
  end
  binding.pry

end




# class MoveCreator
# end


puts 'yo'
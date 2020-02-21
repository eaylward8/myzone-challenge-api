# frozen_string_literal: true

require 'json'
require 'pry-byebug'


DATA_PATH = Rails.root.join('data')

athlete_dirs = Dir.glob("#{DATA_PATH}/**").select { |f| File.directory?(f) }

ad = athlete_dirs.first

move_files = Dir.children(ad)

move_files.each do |move_file|
  # JSON.parse(move_file)
  # binding.pry

end

binding.pry



# class MoveCreator
# end


puts 'yo'
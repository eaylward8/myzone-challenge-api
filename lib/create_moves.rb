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

ZONE_KEYS = %w[
  under_50
  50_to_59
  60_to_69
  70_to_79
  80_to_89
  over_90
].freeze

ATHLETE_DATA_PATH.children.each do |athlete_path|
  moves = athlete_path.children
                      .map { |file_path| JSON.parse(File.read(file_path)) }
                      .sort_by { |move| move['data'].first['timestamp'] }

  moves.each do |move|
    athlete = Athlete.find_by(lname: move['owner']['surname'])
    data = move['data'].first

    # TODO: add challenge_id
    # TODO: add uniqueness validation for myzone_guid

    athlete.moves.create(
      activity: data['activity'],
      meps: data['meps'],
      duration: data['duration'],
      time_over_60_pct: data['timeInZone'],
      avg_effort: data['avgEffortValue'],
      avg_hr: data['avgHR'],
      calories: data['calories'],
      peak_hr: data['peakHR'],
      myzone_guid: data['GUID'],
      date: data['isoDate'],
      start: data['start'],
      end: data['end'],
      timestamp: data['timestamp'],
      ts_start: data['sStart'],
      ts_end: data['sEnd'],
      zone_mins: ZONE_KEYS.zip(data['zoneMins']).to_h,
      zone_meps: ZONE_KEYS.zip(data['zoneMEPs']).to_h
    )
    binding.pry
  end
end




# class MoveCreator
# end


puts 'yo'
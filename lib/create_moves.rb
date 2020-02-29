# frozen_string_literal: true

require 'json'
require 'pry-byebug'

ATHLETE_DATA_PATH = Rails.root.join('data/athletes')

challenge = Challenge.find_by(myzone_guid: 'daf4797f-ecf2-11e9-943f-ac1f6b49537a')

ATHLETE_DATA_PATH.children.each do |athlete_path|
  moves = athlete_path.children
                      .map { |file_path| JSON.parse(File.read(file_path)) }
                      .sort_by { |move| move['data'].first['timestamp'] }

  moves.each do |move|
    athlete = Athlete.find_by(lname: move['owner']['surname'])
    data = move['data'].first

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
      zone_mins: Move::ZONE_KEYS.zip(data['zoneMins']).to_h,
      zone_meps: Move::ZONE_KEYS.zip(data['zoneMEPs']).to_h,
      challenge: challenge
    )
  end
end

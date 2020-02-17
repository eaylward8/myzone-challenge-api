# frozen_string_literal: true

class Move
  include Mongoid::Document
  include Mongoid::Timestamps

  field :activity, type: String
  field :meps, type: Integer
  field :duration, type: Integer
  field :time_over_60_pct, type: Integer
  field :avg_effort, type: Integer
  field :avg_hr, type: Integer
  field :calories, type: Integer
  field :peak_hr, type: Integer
  field :myzone_guid, type: String
  field :date, type: Date
  field :timestamp, type: Integer
  field :start, type: DateTime
  field :end, type: DateTime
  field :zone_mins, type: Hash
  field :zone_meps, type: Hash

  belongs_to :athlete
end

# {
#   'under_50': 5,
#   '50_to_59': 4,
#   '60_to_69': 3,
#   '70_to_79': 5,
#   '80_to_89': 6,
#   'over_90': 8
# }
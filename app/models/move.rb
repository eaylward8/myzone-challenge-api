# frozen_string_literal: true

class Move
  include Mongoid::Document
  include Mongoid::Timestamps

  ZONE_KEYS = %w[
    under_50
    50_to_59
    60_to_69
    70_to_79
    80_to_89
    over_90
  ].freeze

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
  field :start, type: String
  field :end, type: String
  field :timestamp, type: Integer
  field :ts_start, type: DateTime
  field :ts_end, type: DateTime
  field :zone_mins, type: Hash
  field :zone_meps, type: Hash

  belongs_to :athlete
  belongs_to :challenge

  validates :myzone_guid, uniqueness: true
end

# {
#   'under_50': 5,
#   '50_to_59': 4,
#   '60_to_69': 3,
#   '70_to_79': 5,
#   '80_to_89': 6,
#   'over_90': 8
# }
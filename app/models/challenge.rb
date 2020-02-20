# frozen_string_literal: true

class Challenge
  include Mongoid::Document
  include Mongoid::Timestamps

  field :myzone_guid, type: String
  field :title, type: String
  field :start, type: Date
  field :end, type: Date
  field :ts_start, type: Integer
  field :ts_end, type: Integer
  field :zones, type: String

  has_many :moves
end

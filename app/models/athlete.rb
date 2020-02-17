# frozen_string_literal: true

class Athlete
  include Mongoid::Document
  include Mongoid::Timestamps

  field :fname, type: String
  field :lname, type: String
  field :myzone_guid, type: String

  has_many :moves
end

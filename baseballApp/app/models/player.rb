class Player < ActiveRecord::Base
  has_many :batters
  has_many :pitchers
  has_many :teams
end
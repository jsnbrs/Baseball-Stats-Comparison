class Batter < ActiveRecord::Base
  # self.primary_key = 'playerID'
  belongs_to :player
end
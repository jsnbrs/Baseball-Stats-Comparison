class Team < ActiveRecord::Base
  # self.primary_key = 'yearID'
  belongs_to :player
end

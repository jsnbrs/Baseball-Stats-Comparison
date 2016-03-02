class Player < ActiveRecord::Base
  def self.search(query)
      where('name LIKE ?', "%#{query}%")
  end
end

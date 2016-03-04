class Player < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true

  def self.search(query)
      where('name LIKE ?', "%#{query}%")
  end

end

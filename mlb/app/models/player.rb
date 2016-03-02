class Player < ActiveRecord::Base
  attr_accessor :name, :age

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true

  def self.search(query)
      where('name LIKE ?', "%#{query}%")
  end
end

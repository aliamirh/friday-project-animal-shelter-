class Animal < ApplicationRecord
  validates :breed, :name, :color, :age, :presence => true

  def self.search_name(name)
      where("name like ?", "%#{name.titleize}%")
  end
end

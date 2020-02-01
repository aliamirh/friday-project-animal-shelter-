class Animal < ApplicationRecord
  validates :breed, :name, :color, :age, :presence => true

  def self.search_name(name)
      where("name like ?", "%#{name.titleize}%")
  end

  def self.search_name(breed)
      where("name like ?", "%#{breed.titleize}%")
  end
  
  def self.search_name(color)
      where("name like ?", "%#{color.titleize}%")
  end
end

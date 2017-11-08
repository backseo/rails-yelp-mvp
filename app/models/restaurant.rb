class Restaurant < ApplicationRecord
  validates :category, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

  has_many :reviews
  validates_associated :reviews

end

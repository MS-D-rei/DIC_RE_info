class Property < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :remarks, length: { maximum: 100 }
end

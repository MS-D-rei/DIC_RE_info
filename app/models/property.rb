class Property < ApplicationRecord
  has_many :near_stations
  accepts_nested_attributes_for :near_stations

  validates :name, presence: true, length: { maximum: 30 }
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :remarks, length: { maximum: 100 }
end

class Car < ApplicationRecord
  include Geocoder
  
  has_one_attached :photo
  #validates :city, presence: true
  #validates :available_from, :available_to, presence: true
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

class Location < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  geocoded_by :address
  after_validation :geocode
end

class Bike < ActiveRecord::Base

	belongs_to :manufacturer
	has_many :bookings
end

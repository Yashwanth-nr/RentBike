class Booking < ActiveRecord::Base
	belongs_to :bike
	belongs_to :user

 validate :check_availability

 private

 def check_availability
 	bookings = self.bike.bookings.where('confirmed = ?', true)
 	new_booking_dates = ( self.start_datetime.to_date..self.end_datetime.to_date).to_a

 	bookings.each do |booking|
 		booking_dates = (booking.start_datetime.to_date..booking.end_datetime.to_date).to_a

 		if !((booking_dates - new_booking_dates).length == booking_dates.length)

 			errors.add(:base ,"This bike is already been booked for these days")
 		end
 	end
 end

end

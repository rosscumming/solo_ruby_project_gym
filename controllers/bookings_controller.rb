require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/booking.rb' )
require_relative( '../models/session.rb' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

get '/bookings/?' do
  @bookings = Booking.all()
  erb(:"bookings/index")
end

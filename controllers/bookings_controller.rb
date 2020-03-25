require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( '../models/booking.rb' )
require_relative( '../models/session.rb' )
require_relative( '../models/member.rb' )

get '/bookings/?' do
  @bookings = Booking.all()
  @members = Member.all()
  @sessions = Session.all()
  erb(:"bookings/index")
end

#create
post '/bookings/?' do
  @booking = Booking.new(params)
  @booking.save()
  erb(:"bookings/create")
end

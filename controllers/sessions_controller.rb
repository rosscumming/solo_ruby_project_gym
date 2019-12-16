require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/session.rb' )
also_reload( '../models/*' )

#sessions list
get '/sessions/?' do
  @sessions = Session.all()
  erb(:"sessions/index")
end

require( 'sinatra' )
require( 'sinatra/contrib/all' )
require ( 'pry')
require_relative( '../models/session.rb' )
also_reload( '../models/*' )

#sessions list
get '/sessions/?' do
  @sessions = Session.all()
  erb(:"sessions/index")
end

#show
get '/sessions/:id' do
  @session = Session.find(params[:id].to_i)
  erb(:"sessions/show")
end

# new
get '/sessions/new' do
  @sessions = Session.all()
  erb(:sessions)
end

#edit
get '/sessions/:id/edit' do
  @sessions = Session.all()
  @session = Session.find(params[:id])
  erb(:"sessions/edit")
end

#update
post '/sessions/:id' do
  Session.new(params).update()
  redirect to '/sessions'
end

#create
post '/sessions/?' do
  @session = Session.new(params)
  @session.save()
  erb(:"sessions/create")
end

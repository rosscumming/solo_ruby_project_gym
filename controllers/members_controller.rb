require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( '../models/member.rb' )

#members list
get '/members/?' do
  @members = Member.all()
  erb(:"members/index")
end

#show
get '/members/:id' do
  @member = Member.find(params[:id].to_i)
  erb(:"members/show")
end

# new
get '/members/new' do
  @members = Member.all()
  erb(:members)
end

#edit
get '/members/:id/edit' do
  @members = Member.all()
  @member = Member.find(params[:id])
  erb(:"members/edit")
end

#update
post '/members/:id' do
  Member.new(params).update()
  redirect to '/members'
end

#create
post '/members/?' do
  @member = Member.new(params)
  @member.save()
  erb(:"members/create")
end

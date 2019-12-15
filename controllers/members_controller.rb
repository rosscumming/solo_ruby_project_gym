require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

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

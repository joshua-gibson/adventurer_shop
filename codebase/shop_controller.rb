require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry-byebug' )
require_relative('./models/items.rb')
require_relative('./models/types.rb')
also_reload('./models/*')

# index
get '/shop' do
  @items = Item.all()
  erb(:index)
end

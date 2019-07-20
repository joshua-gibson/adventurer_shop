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

#new
get '/shop/new' do
  @types = Type.all()
  erb(:new)
end

# create
post '/shop' do
  @item = Item.new(params)
  @item.save()
  erb(:create)
end


# show
get '/shop/:id' do
  @item = Item.find(params[:id])
  erb(:show)
end

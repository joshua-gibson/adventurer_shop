require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry-byebug' )
require_relative('./models/items.rb')
require_relative('./models/types.rb')
also_reload('./models/*')

#REST views for ITEMS
# index
get '/shop' do
  @items = Item.all()
  erb(:item_index)
end

#new
get '/shop/new' do
  @types = Type.all()
  erb(:item_new)
end

# create
post '/shop' do
  @item = Item.new(params)
  @item.save()
  erb(:item_create)
end

# delete
get '/shop/del/:id' do
  @item = Item.find(params[:id])
  @item.delete
  erb(:item_delete)
end

# show
get '/shop/:id' do
  @item = Item.find(params[:id])
  erb(:item_show)
end

#REST views for TYPES
# index
get '/types' do
  @types = Type.all()
  erb(:type_index)
end

#new
get '/types/new' do
  erb(:type_new)
end

# create
post '/types' do
  @type = Type.new(params)
  @type.save()
  erb(:type_create)
end

# show
get '/types/:id' do
  @type = Type.find(params[:id])
  erb(:type_show)
end

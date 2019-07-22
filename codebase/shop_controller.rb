require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry-byebug' )
require_relative('./models/items.rb')
require_relative('./models/types.rb')
require_relative('./models/categories.rb')
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

#stock change
post '/shop/stockch/:id' do
  @item = Item.find(params[:id])
    # binding.pry
  @item.stock_ch(params[:chtype], params[:chamt].to_i)
  @item.update()
  redirect to "/shop/#{params['id']}"
end

#edit
get '/shop/edit/:id' do
  @types = Type.all
  @item = Item.find(params[:id])
  erb(:item_edit)
end

post '/shop/:id' do
  item = Item.new(params)
  item.update
  erb(:item_edited)
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
  @categories = Category.all()
  erb(:type_new)
end

# create
post '/types' do
  @type = Type.new(params)
  @type.save()
  erb(:type_create)
end

# delete
get '/types/del/:id' do
  @type = Type.find(params[:id])
  @type.delete
  erb(:type_delete)
end

#edit
get '/types/edit/:id' do
@type = Type.find(params[:id])
  erb(:type_edit)
end

post '/types/:id' do
  type = Type.new(params)
  type.update
  erb(:type_edited)
end

# show
get '/types/:id' do
  @type = Type.find(params[:id])
  erb(:type_show)
end

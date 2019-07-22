
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




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

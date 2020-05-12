


#REST views for TYPES
# index
get '/types' do
  @types = Type.all()
  erb(:"types/type_index")
end

#new
get '/types/new' do
  @categories = Category.all()
  erb(:"types/type_new")
end

# create
post '/types' do
  @type = Type.new(params)
  @type.save()
  erb(:"types/type_create")
end

# delete
get '/types/del/:id' do
  @type = Type.find(params[:id])
  @type.delete
  erb(:"types/type_delete")
end

#edit
get '/types/edit/:id' do
@type = Type.find(params[:id])
  erb(:"types/type_edit")
end

post '/types/:id' do
  type = Type.new(params)
  type.update
  erb(:"types/type_edited")
end

# show
get '/types/:id' do
  @type = Type.find(params[:id])
  erb(:"types/type_show")
end

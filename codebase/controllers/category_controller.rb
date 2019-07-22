
#REST views for CATEGORIES
# index
get '/cats' do
  @cats = Category.all()
  erb(:"categories/cat_index")
end

#new
get '/cats/new' do
  erb(:"categories/cat_new")
end

# create
post '/cats' do
  @cat = Category.new(params)
  @cat.save()
    redirect to "/cats"
end

# delete
get '/cats/del/:id' do
  @cat = Category.find(params[:id])
  @cat.delete
  redirect to "/cats"
end

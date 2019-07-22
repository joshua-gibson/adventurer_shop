
#REST views for CHARACTER_CLASSES
# index
get '/cclass' do
  @cclasses = C_Class.all()
  erb( :"cclass/cclass_index" )
end

#new
get '/cclass/new' do
  erb(:"cclass/cclass_new")
end

# create
post '/cclass' do
  @cclass = C_Class.new(params)
  @cclass.save()
    redirect to "/cclass"
end

# delete
get '/cclass/del/:id' do
  @cclass = C_Class.find(params[:id])
  @cclass.delete
  redirect to "/cclass"
end

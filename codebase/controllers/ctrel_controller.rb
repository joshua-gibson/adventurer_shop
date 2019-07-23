
#REST views for Class-Type Relationships
# index
get '/ctrel' do
  @ctrels = CTrel.all()
  erb( :"ctrel/ctrel_index" )
end

#new
get '/ctrel/new' do
  erb(:"ctrel/ctrel_new")
end

# create
post '/ctrel' do
  @ctrel = CTrel.new(params)
  @ctrel.save()
    redirect to "/ctrel"
end

# delete
get '/ctrel/del/:id' do
  @ctrel = CTrel.find(params[:id])
  @ctrel.delete
  redirect to "/ctrel"
end

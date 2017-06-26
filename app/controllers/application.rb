get '/' do
  "Hello world!"
end

# index
get '/contacts/?' do
  @contacts = Contact.all
  erb :'contacts/index'
end

# new
get '/contacts/new' do
  @contact = Contact.new
  erb :'contacts/new'
end

# create
post '/contacts' do
  @contact = Contact.create(params[:contact])
  redirect '/contacts'
end

# show
get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'contacts/show'
end

### All of the following actions are referred to as member actions, since they act on a single member
# edit
get '/contacts/:id/edit' do
  @contact = Contact.find(params[:id])
  erb :'contacts/edit'
end

# update
def update_contact
  puts params
  @contact = Contact.find(params[:id])
  @contact.update(params[:contact])
  redirect "/contacts/#{@contact.id}"
end

patch '/contacts/:id' do
  update_contact
end

put '/contacts/:id' do
  update_contact
end

# delete
delete '/contacts/:id'do
  Contact.find(params[:id]).destroy!
  redirect '/contacts'
end

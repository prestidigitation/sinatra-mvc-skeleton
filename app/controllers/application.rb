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
  erb :'contacts/new'
end

# create
post '/contacts' do
  puts params
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
  "This is the contacts edit action"
end

# update
patch '/contacts/:id' do
  "This is the contacts update action"
end

put '/contacts/:id' do
  "This is the contacts update action"
end

# delete
delete '/contacts/:id'do
  "This is the contacts delete action"
end

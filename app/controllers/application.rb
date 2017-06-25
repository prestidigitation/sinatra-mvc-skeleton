get '/' do
  "Hello world!"
end

# index
get '/contacts' do
  @contacts = Contact.all
  @contacts.map { |contact| contact.email }.to_s
end

# new
get '/contacts/new' do
  "This is the contacts new action"
end

# create
post '/contacts' do
  "This is the contacts create action"
end

# show
get '/contacts/:id' do
  puts params
  @contact = Contact.find(params[:id])
  @contact.email
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

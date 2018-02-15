require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get('/') do
  @list = Contact.all()
  erb(:input)
end

post('/') do
  name1 = params["name1"]
  name2 = params["name2"]
  address = params["address"]
  job = params["job"]
  item = Contact.new({:name1 => name1, :name2 => name2, :address => address, :job => job})
  item.save()
  @list = Contact.all()
  erb(:input)
end

get('/output/:id') do
  @item = Contact.find(params[:id])
  erb(:output)
end

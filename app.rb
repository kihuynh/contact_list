require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')

get('/') do
  @list = Item.all()
  erb(:input)
end

post('/') do
  name1 = params["name1"]
  name2 = params["name2"]
  address = params["address"]
  job = params["job"]
  item = Item.new(name1, name2, address, job)
  item.save()
  @list = Item.all()
  erb(:output)
end

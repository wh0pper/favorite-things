require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('pry')
require('./lib/item.rb')

get('/') do
  @list = Item.all()
  erb(:list)
end

get('/items/:id') do
  @item = Item.find(params[:id])
  erb(:item)
end

post('/') do
  item_name = params.fetch('item')
  item = Item.new(item_name)
  item.save()
  @list = Item.all()
  erb(:list)
end

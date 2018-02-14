require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')
require('./lib/item.rb')

get('/') do
  Item.clear
  @list = Item.all()
  erb(:list)
end

get('/items/:id') do
  @item = Item.find(params[:id])
  erb(:item)
end

post('/') do
  item_name = params.fetch('item')
  item_ranking = params.fetch('item-ranking')
  item = Item.new(item_name)
  @if_error = item.save()
  item.add_ranking(item_ranking)
  Item.sort_by_rank!()
  @list = Item.all()
  puts @list
  erb(:list)
end

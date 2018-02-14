require('rspec')
require('item')
require('pry')

describe('item') do
  before() do
    Item.clear()
  end
  it("displays all instances of the class") do
    item1 = Item.new("headphones")
    item1.save()
    expect(Item.all()).to(eq([item1]))
  end
end

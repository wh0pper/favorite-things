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
  it("clear all instances of the class from the list array") do
    item1 = Item.new("headphones")
    item1.save()
    Item.clear()
    expect(Item.all()).to(eq([]))
  end
end

describe("#id") do
  it("increments an id by 1 each time a new item is added") do
    item = Item.new("tacos")
    item.save()
    item2 = Item.new("pizza")
    item2.save()
    expect(item.id()).to(eq(1))
    expect(item2.id()).to(eq(2))
  end
end

describe(".find") do
    it("finds an item based on its id") do
      item = Item.new("tacos")
      item.save()
      item2 = Item.new("pizza")
      item2.save()
      expect(Item.find(1)).to(eq(item))
      expect(Item.find(2)).to(eq(item2))
    end
  end

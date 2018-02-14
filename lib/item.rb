#!/usr/bin/ruby

class Item
  attr_accessor :id
  attr_accessor :name
  @@list = []

  def initialize(name)
    @name = name
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def self.find(name)
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.find(id)
    item_id = id.to_i()
    @@list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end

end

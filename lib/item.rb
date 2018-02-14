#!/usr/bin/ruby

class Item
  attr_accessor :name
  @@list = []

  def initialize(name)
    @name = name
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
  
end

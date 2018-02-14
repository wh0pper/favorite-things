#!/usr/bin/ruby

class Item
  attr_accessor :id, :name, :ranking
  attr_accessor :name
  @@list = []

  def initialize(name)
    @name = name
    @id = @@list.length + 1
    @ranking = 0
  end

  def self.all()
    @@list
  end

  def add_ranking(score)
    @ranking = score
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

  def self.sort_by_rank!()
    @@list.sort_by! {|item| item.ranking.to_i}
    @@list.reverse!
  end
end

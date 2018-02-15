#!/usr/bin/ruby

class Contact
  @@list = []

   attr_accessor :name1, :name2, :address, :job
   attr_reader :id

  def initialize(attributes)
    @name1 = attributes.fetch(:name1)
    @name2 = attributes.fetch(:name2)
    @address = attributes.fetch(:address)
    @job = attributes.fetch(:job)
    @id = @@list.length + 1
  end


  def self.all
    @@list
  end

  def self.clear()
    @@list = []
  end

  def save()
    @@list.push(self)
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

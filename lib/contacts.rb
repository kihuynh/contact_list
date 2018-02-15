#!/usr/bin/ruby

class Contact
  @@list = []

   attr_accessor :name1
   attr_accessor :name2
   attr_accessor :address
   attr_accessor :job
   attr_reader :id

  def initialize(name1, name2, address, job)
    @name1 = name1
    @name2 = name2
    @address = address
    @job = job
    @id = @@list.length + 1
  end


  def self.all
    @@list
  end

  def save()
    @@list.push(self)
  end
end

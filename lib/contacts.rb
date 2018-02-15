#!/usr/bin/ruby

class Contact
  @@list = []

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

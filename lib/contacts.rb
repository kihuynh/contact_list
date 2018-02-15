#!/usr/bin/ruby

class Contact
  @@list = []

  def initialize(name1)
    @name1 = name1
    # @name2 = name2
    # @address = address
    # @job = job
  end


  def self.all
    @@list
  end

  def save
    @@list.push(self)
  end
end

require("sinatra")
require('rspec')
require('contacts')
require('pry')

describe("Contact") do
  before() do
    Contact.clear()
  end

  describe('.all') do
    it("An empty list") do
      expect(Contact.all()).to(eq([]))
    end

    describe("#save") do
    it("Save all contact info") do
      item = Contact.new(:name1 => 'joe', :name2 => 'smith', :address => '123 fake st', :job => 'Banker')
      item.save()
      expect(Contact.all()).to(eq([item]))
    end
  end

  describe(".clear") do
    it ('clears the array') do
      item = Contact.new(:name1 => 'joe', :name2 => 'smith', :address => '123 fake st', :job => 'Banker')
      item.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end
  describe("#id") do
      it("increments an id by 1 each time a new item is added") do
        item = Contact.new({:name1 => 'joe', :name2 => 'smith', :address => '123 fake st', :job => 'Banker'})
        item.save()
        item2 = Contact.new({:name1 => 'big', :name2 => 'rodger', :address => '503 Rodger Ave', :job => 'Library'})
        item2.save()
        expect(item.id()).to(eq(1))
        expect(item2.id()).to(eq(2))
      end
    end

    describe(".find") do
      it("finds an item based on its id") do
        item = Contact.new({:name1 => 'joe', :name2 => 'smith', :address => '123 fake st', :job => 'Banker'})
        item.save()
        item2 = Contact.new({:name1 => 'big', :name2 => 'rodger', :address => '503 Rodger Ave', :job => 'Library'})
        item2.save()
        expect(Contact.find(1)).to(eq(item))
        expect(Contact.find(2)).to(eq(item2))
      end
    end
  end
end

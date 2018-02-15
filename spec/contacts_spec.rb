require('rspec')
require('contacts')
require('pry')

describe('contacts') do
  it("An empty list") do
  expect(Contact.all()).to(eq([]))
   end

   it("Save an item to the list") do
    name =  Contact.new("joe")
    name.save()
   expect(Contact.all()).to(eq([name1]))
    end
end
